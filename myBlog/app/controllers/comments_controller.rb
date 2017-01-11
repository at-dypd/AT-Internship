class CommentsController < ApplicationController

  def index
  end

  def create
    @post = Post.find_by(params[:post_id])
    if params[:submit] == "Comment"
    @post.comments.create(content: params[:content], user_id: current_user.id)
    else
      @comment = Comment.find_by(id: params[:comment_id])
      @comment.replies.create(content: params[:content], user_id: current_user.id, post_id: @post.id)
    end
    redirect_to user_post_path(user_id: current_user.id, id: @post.id)
  end

  def destroy

  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id, :id)
    end
end
