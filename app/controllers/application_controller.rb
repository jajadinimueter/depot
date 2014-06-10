class ApplicationController < ActionController::Base
  before_action :set_i18n_locale_from_params		
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected		

    def set_i18n_locale_from_params
      if params[:set_locale]
        if I18n.available_locales.map(&:to_s).include?(params[:set_locale])
          I18n.locale = params[:set_locale]
        else
          flash.now[:notice] = 
            "#{params[:set_locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end
    end

    def default_url_options
      { locale: I18n.locale }
    end  
end
