class ProfilesController < ApplicationController
	def new
	end

	def create
		render text: params[:profile].inspect
	end
end
