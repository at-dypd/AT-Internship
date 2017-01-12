class CookiesController < ApplicationController
	def index
		
	end
	def create
		cookies[:cart] = { "#{params[:product_id]}" => "1" }
		redirect_to root_path
				binding.pry
	end
end
