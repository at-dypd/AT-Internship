class PostsController < ApplicationController
	before_action :get_post,only: [:update,:destroy,:show]
	def index
		@posts = Post.all
		render json: @posts
		
	end

	def new
		
	end

	def show
		
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			render json:@post
		else
			render json:@post.errors
		end
	end

	def update
		if @post.update(post_params)
			render json: @post
		else
			render json: @post.errors
		end
	end

	def destroy
		if @post.destroy
			render json: @post
		else
			render json: @post.errors
		end
	end

	private
		def post_params
			params.permit(:title,:content)
		end
		def get_post
			@post = Post.find(params[:id])
		end
end