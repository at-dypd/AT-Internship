class CookiesController < ApplicationController
	def index
		
	end
	def create
		binding.pry
		cookies[:cart] = { "@product.id"=> "@product.price" }
		redirect_to root_path
	end
end
