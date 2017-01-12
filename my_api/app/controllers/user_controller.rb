class UserController < ApplicationController
	def index

	end

	def new
	end

	def create
		# @user = User.new(user_params)
		# if @user.save
		# 	render json: @user, status: :created
		# else
		# 	render json: @user.errors, status: 422
		# end
	end


	def edit
	end

	def update

	end

	def show
	end

	private
		def user_params
			params.permit(:email, :password)
		end
end