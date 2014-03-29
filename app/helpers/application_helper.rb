module ApplicationHelper		# UebungWaehrungsHelper (Kap. 8: Rails Controller und Functional Tests)
    def number_to_chf(price)
        return sprintf("CHF %0.02f", price)
    end
end
