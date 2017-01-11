class UsersController < ApplicationController
	def index
		
	end

	def edit
		binding.pry
		@user = current_user
	end

	def update

	end
end