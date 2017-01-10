class LikeController < ApplicationController
	def new
		redirect_to new_path(flash[:new_id])
	end

	def create
		binding.pry
		@new = New.find_by(id: flash[:new_id])
		@new.like_count += 1
		@new.save
		# @like_count = @new.like_count
		redirect_to new_path(flash[:new_id])
	end
end