require 'devise'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_devise_params, if: :devise_controller?
  before_action :authenticate_profile!

  protected

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:firstname, :lastname, :gender, :interests, :bio, :birthdate, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok, :email, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:firstname, :lastname, :gender, :interests, :bio, :birthdate, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok, :email, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.for(:profile_update) do |u|
      u.permit(:firstname, :lastname, :gender, :interests, :bio, :birthdate, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok, :email, :password, :password_confirmation)
    end

  end
  
end
