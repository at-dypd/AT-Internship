class RegisterController < ApplicationController
	def index
		@users = User.all
		render json:@users 
	end

	def create
		binding.pry
		@post = User.new(user_params)
		if @post.save
			render json:@users
		else
			render json:@users.errors
		end
	end

	private
		def user_params
			params.permit(:email,:password)
		end
end
