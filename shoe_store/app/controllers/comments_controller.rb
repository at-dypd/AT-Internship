class CommentsController < ApplicationController
	def index
		@comment= Comment.all
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to product_path(params[:product_id])
	end

	private
	def comment_params
		params.require(:comment).permit(:user_id, :content, :product_id, :comment_id)
	end
end
