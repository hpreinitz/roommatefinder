class ProfilesController < ApplicationController

	def new
      @profile = Profile.new
	end

    def show
      set_profile
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
      respond_to do |format|
        if @profile.update(profile_params)
          format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
          format.json { render action: 'show', status: :ok, location: @profile }
        else
          format.html { render action: 'edit' }
          format.json { render json: @profile.errors, status: :unprocessable_entity }
        end
       end
    end

	def index
      @profiles = Profile.all
	end

	def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:firstname, :lastname, :gender, :interests, :email, :password, :bio, :birthdate)
    end

end
