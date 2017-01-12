class UsersController < ApplicationController
  class_attribute :product_ordered_option
  def edit
  end

  def index
    @users = User.all
  end
  def show
    # UsersController.product_ordered_option = params[:navigation]
    @user = User.find(params[:id])
    # @user.product_ordered
  end

  def update
    if current_user.update(user_params)
      redirect_to action: :show, notice: 'Update Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :telephone, :avatar)
  end
end