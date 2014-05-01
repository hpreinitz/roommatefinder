

class ProfilesController < ApplicationController
before_filter :configure_devise_params, if: :devise_controller?
before_action :authenticate_profile!


  def new
      @profile = Profile.new
	end

  def show
      set_profile
  end

  def edit
     @profile = Profile.find(params[:id])

  end

  def destroy
      set_profile
      @profile.destroy
      respond_to do |format|
        format.html { redirect_to profiles_url }
        format.json { head :no_content }
       end
  end

  def update
	  set_profile

    if @profile.update(params[:profile].permit(:firstname, :lastname, :email, :birthdate, :gender, :bio, :interests, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok))
     save_tags 
      redirect_to @profile
    else
      render 'edit'
    end

  end

	def index


     if params[:tag]
       @profiles = Profile.tagged_with(params[:tag])
     else
       @profiles = Profile.all
     end

    # if params[:interest]
    #   @profiles = Profile.tagged_with(params[:interest])
    # else
    #    @profiles = Profile.all
    # end

	end

	def create
   @profile = Profile.new(profile_params)
    #@profile = Profile.new(configure_devise_params)

    respond_to do |format|
      if @profile.save!
        save_tags
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def save_tags
    @profile.tag_list.add(@profile.interests, parse: true)
    @profile.save
    @profile.reload
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
    #  if profile_signed_in?
    
    #    @profile = Profile.find(current_profile)
    #  else
        @profile = Profile.find(params[:id])
     # end
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:tag, :firstname, :lastname, :gender, :interests, :email, :password, :bio, :birthdate, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok)
    end

    def sign_up_params
      params.require(:profile).permit(:firstname, :lastname, :gender, :interests, :email, :password, :bio, :birthdate, :petsok, :genderok, :gendermaleok, :genderfemaleok, :gendertransgenderok, :gendernotspecifiedok)
    end


end
