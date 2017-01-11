class CommentsController < ApplicationController

  def index
  end

  def create
    binding.pry
    @post = Post.find_by(params[:post_id])
    if params[:comment_id] == ""
      @comment = @post.replies.create(comment_params)
      redirect_to user_post_path(current_user.id, @post.id)
    else
      @comment = @post.comments.create(comment_params)
      redirect_to user_post_path(current_user.id, @post.id)
    end

  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id, :id)
    end
end
