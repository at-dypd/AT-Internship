class RegisterController < ApplicationController
	def create
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


