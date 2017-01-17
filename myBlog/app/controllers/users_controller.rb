class UsersController < ApplicationController

  def index
  end

  def show
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path, notice: 'Update Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :age)
  end

end