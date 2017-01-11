class CommentController <ApplicationController
	def new
		redirect_to new_path(flash[:new_id])
	end

	def create
		@new = New.find_by(id: params[:new_id])
		
		if params[:commit] == "Comment"
			@comment = @new.comments.create(content: params[:comment][:content], user_id: current_user.id)
		elsif params[:commit] == "Reply"
			@comment = @new.comments.create(content: params[:comment][:content],comment_id: params[:comment_id], user_id: current_user.id)
		end
		# redirect_to "/user/#{@user.id}/post/#{flash[:post_id]}"
		redirect_to new_path(flash[:new_id])
		# @comment = Comment.new(content: params[:content], user_id: current_user.id, new_id: flash[:new_id])
	end

	def destroy
		Comment.destroy(params[:id])
		Comment.where(comment_id: params[:id]).destroy_all
		redirect_to new_path(params[:new_id])
	end
end