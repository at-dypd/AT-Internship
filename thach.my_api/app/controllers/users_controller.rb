class UsersController<ApplicationController
  before_action :set_user, only:[:update, :show, :destroy]
 
	def index
    @users=User.all
    render json: @users
	end

	def new
	end

	def create
  end

	def update 
    if @user.update(user_params)
      render json: @user
    else 
      render json: @user.errors, status: 422
    end
		
	end

  def edit
  end  

	def destroy
    if @user.destroy
      render json: @user
    else
      render json: @user, status: 422
    end
	end

	def show
    render json: @user
  end

private
  def user_params
    params.permit(:email, :password)
  end

private
  def set_user
    @user = User.find(params[:id])
  end
   
end