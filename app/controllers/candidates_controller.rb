class CandidatesController < ApplicationController

	def new
	end

	def index
      @profiles = Profile.all
	end

    def show
      set_profile
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
