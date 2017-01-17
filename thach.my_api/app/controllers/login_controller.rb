class LoginController < ApplicationController
	def create
		@user = User.find_by(email: params[:email])
		@comfirm_token = params[:email]+params[:password]
		if @user.update(comfirm_token: @comfirm_token)
      render json: @user, status: :created
    else
      render json: @user.errors, status: 422
    end
	end
end
