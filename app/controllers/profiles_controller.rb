class ProfilesController < ApplicationController
	def new
	end

	def index
	end

	def create
		render text: params[:profile].inspect
	end
end
