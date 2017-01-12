class PostController < ApplicationController
	before_action :set_post, only: [:update, :show, :destroy]
	def index
		@posts = Post.all
		# binding.pry
		return render json: @posts
	end

	def new
	end

	def create
		# binding.pry
		@post = Post.new(post_params)
		if @post.save
			render json: @post, status: :created
		else
			render json: @post.errors, status: 422
		end
	end

	def show
		# binding.pry
		# @post = Post.find(params[:id])
		render json: @post
	end

	def edit
	end

	def update
		# binding.pry
		# @post = Post.find(params[:id])
		if @post.update(post_params)
			render json: @post
		else
			render json: @post.errors, status: 422
		end

	end

	def destroy
		# binding.pry
		# @post = Post.find(params[:id])
		if @post.destroy
			render json: @post
		else
			render json: @post.errors, status: 422
		end
	end

	private
		def post_params
			# chi lay 2 params
			params.permit(:title, :content)
		end

		def set_post
			@post = Post.find(params[:id])
		end

end