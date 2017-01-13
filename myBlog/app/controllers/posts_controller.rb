class PostsController < ApplicationController
  before_action :set_post, only: [:update, :show, :edit, :destroy]

  def index
    # params[:user_id].present?
      @user = User.includes(:posts).all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    @post.user_id = current_user.id if current_user
    if @post.save
      flash[:notice] = "Post successfully created"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.includes(:comments).find(params[:id])
  end

  def edit
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :containt)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
