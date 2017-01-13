class LikesController < ActionController::Base
	def create
		if Like.where(product_id: params[:id],user_id: params[:user_id]).exists?
			redirect_to product_path(params[:id])
		else
			Like.create(product_id: params[:id],user_id: params[:user_id])
			redirect_to product_path(params[:id])
		end
	end
end