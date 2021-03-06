module ApplicationHelper		# UebungWaehrungsHelper (Kap. 8: Rails Controller und Functional Tests)
  # def number_to_chf(price)      # commented out because of no use any more
  #   return sprintf("CHF %0.02f", price)
  # end

  def currency_to_locale(price)
    price = price * 1.3610 if 'es' == I18n.locale.to_s
    # price = price * 0.8960 if 'de-ch' == I18n.locale.to_s
    price = ((price * 0.8960) * 20).round / 20.0 if 'de-ch' == I18n.locale.to_s
    number_to_currency price
  end

  def hidden_div_if(condition, attributes = {}, &block)		
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
end
