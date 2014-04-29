class CandidatesController < ApplicationController

	def new
	end

	def index
      @candidates = Profile.all
	end

    def show
      set_candidate
    end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:firstname, :lastname, :gender, :interests, :email, :password, :bio, :birthdate, :petsok, :genderok)
    end
end
