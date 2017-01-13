class CommentsController < ApplicationController

  def index
  end

  def create
     @user = User.includes([posts: :comments]).find_by(id: params[:user_id])
    if params[:submit] == "Comment"
      @post.comments.create(content: params[:content])
     flash[:notice] = "Comment successfully created"
    else
      @comment = Comment.find_by(id: params[:comment_id])
      @comment.replies.create(content: params[:content], user_id: current_user.id, post_id: @post.id)
      flash[:notice] = "Reply successfully created"
    end
    redirect_to user_post_path(user_id: current_user.id, id: @post.id)
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id, :id)
    end
end
