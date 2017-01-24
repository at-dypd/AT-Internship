class PostsController<ApplicationController
	def create
		@post = Post.new(post_params)
		@user = User.find_by(comfirm_token: params[:comfirm_token])
		if @user.nil?
			render json: @post.errors, status: 422
		else
			@post.user_id = @user.id
			@post.save
			render json: @post, status: :created
		end
	end

	private
	def post_params
		params.permit(:content)
	end
end