class ProductsController < ApplicationController
	def index
		if params[:limit].nil?
			params[:limit]=10
		end
		@search = Product.ransack(params[:q])
		if params[:navigation].nil?
	    @products = @search.result.page(params[:page]).per(params[:limit])
	  elsif params[:navigation]=="new"
	  	@products = @search.result.page(params[:page]).per(params[:limit]).order(created_at: :desc)
	  else 
	    @products = @search.result.page(params[:page]).per(params[:limit]).order(views_count: :desc)
	  end
	end

	def new
		@product = Product.new
	end

	def show
		@product = Product.includes(:categories, comments: :replies).find(params[:id])
		@product.views_count+=1
		@product.save
	end

	def create
		@product = Product.new(product_params)
	  if @product.save
      if params[:product][:categories].present?
        params[:product][:categories].each do |cate|
        	CategoriesProducts.create(category_id: cate, product_id: @product.id)
        end
      end
      redirect_to root_path
    end
	end

	def destroy
		Product.destroy(params[:id])
		redirect_to root_path
	end

  private
  def product_params
    params.require(:product).permit(:image, :product_name, :price, :type, :user_id, :description)
  end
end
