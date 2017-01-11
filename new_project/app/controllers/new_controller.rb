class NewController < ApplicationController
	def index
		# binding.pry
		@news = New.all.page(params[:page]).per(6)
		# @news = New.all

		# @search = New.search(params[:q])
  #   		@news_search = @search.result



  		# @search = New.search(params[:q])
    # 		@news = @search.result
	end

	def new
		@cats = Category.all
	end	

	def create
		binding.pry
		@new = New.new(name: params[:new][:name], description: params[:new][:description], content: params[:new][:content], user_id: current_user.id, vote: 0, picture: params[:new][:picture].original_filename)
		@new.save
		params[:new][:category].each do |cat|
			@cats_new = CatsNew.new(new_id: @new.id, cat_id: cat)
			@cats_new.save
		end

		redirect_to new_index_path
	end
	def edit
		binding.pry
		@cats = Category.all
		@new = New.find_by(id: params[:id])

	end
	def update
		binding.pry
		@new = New.find_by(id: params[:new][:id])

		redirect_to new_index_path
	end

	def show
		@new = New.find_by(id: params[:id])
		@new.vote += 1;
		@new.save
		# binding.pry
		@comments = @new.comments.where(comment_id: nil)
		# @comments = Comment.all
		# @comments = Comment.where(new_id: flash[:new_id])

	end

	def destroy
		New.destroy(params[:id])
		CatsNew.where(new_id: params[:id]).destroy_all
		redirect_to new_index_path
	end
end