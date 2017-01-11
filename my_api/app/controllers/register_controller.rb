class RegisterController < ApplicationController
	def new
	end

	def create
		binding.pry
		@user = User.new(user_params)
		if @user.save
			render json: @user, status: :created
		else
			render json: @user.errors, status: 422
		end
	end

	private
		def user_params
			params.permit(:email, :password)
		end
end