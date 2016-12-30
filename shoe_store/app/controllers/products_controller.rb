class ProductsController < ApplicationController

	def index
    @search = Product.all.ransack params[:q]
    @products = @search.result.page(params[:page]).per params[:limit]
	end

	def new

		@product = Product.new
		# u.image = params[:file] # Assign a file like this, or

		# like this
		# File.open('image_user1') do |f|
		#   u.image = f
		# end

		# u.image!
		# u.image.url # => '/url/to/file.png'
		# u.image.current_path # => 'path/to/file.png'
		# u.image_identifier # => 'file.png'
	end

	def create
		binding.pry
		
	end

end