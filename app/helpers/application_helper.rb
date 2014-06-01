module ApplicationHelper		# UebungWaehrungsHelper (Kap. 8: Rails Controller und Functional Tests)
    def number_to_chf(price)
        return sprintf("CHF %0.02f", price)
    end

  def hidden_div_if(condition, attributes = {}, &block)		# Iteration F4 (Chapter 11.4, p. 151)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
end
