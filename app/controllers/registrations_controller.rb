class Profiles::RegistrationsController < Devise::RegistrationsController
     skip_before_filter :verify_authenticity_token, :only => [:ipn_notification]
  
  def sign_up_params
      params.require(:profile).permit(:firstname, :lastname, :gender, :interests, :email, :password, :password_confirmation, :bio, :birthdate, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok)
  end
end
