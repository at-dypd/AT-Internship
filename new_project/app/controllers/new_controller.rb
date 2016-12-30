class NewController < ApplicationController
	def index
		# binding.pry
		@news = New.all
	end

	def new
		binding.pry
		@cats = Category.all
	end

	def create

	end
end