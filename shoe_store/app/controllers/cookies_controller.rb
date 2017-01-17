class CookiesController < ApplicationController
	@@thach=Hash.new
	def index
		cookies[:cart]=@@thach.to_s
	end
	def create
		@@thach[params[:product_id]]="#{params[:product_price]}"
		cookies[:cart]=@@thach.to_s
		redirect_to root_path
	end
	def destroy
		binding.pry
		@@thach[params[:product_id]]=nil
		redirect_to root_path
	end
end
