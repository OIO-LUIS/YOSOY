class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:identity])
       # permit nested attributes
       # devise_parameter_sanitizer.permit(:sign_up, keys: 
       # [:username,:phone,profile_attributes:[:firstname, :lastname]])
    end

end
