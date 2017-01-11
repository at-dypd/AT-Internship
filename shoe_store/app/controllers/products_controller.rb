class ProductsController < ApplicationController

	def index
		binding.pry
		if params[:navigation].nil?
	    @search = Product.all.ransack(params[:q])
	    @products = @search.result.page(params[:page]).per(params[:limit])
	  elsif params[:navigation]=="new"
	  	@search = Product.all.order(created_at: :desc).ransack params[:q] 
	  	@products = @search.result.page(params[:page]).per params[:limit]
	  else 
	  	@search = Product.all.order(views_count: :desc).ransack params[:q] 
	    @products = @search.result.page(params[:page]).per params[:limit]
	  end
	end

	def new
		@cats = Category.all
		@product = Product.new
	end

	def show
		@product = Product.find(params[:id])
		@product.views_count+=1
		@product.save
	end

	def create
		@product = Product.new(product_params)
		@product.views_count = 0
		@product.likes_count = 0
	  if @product.save
      if params[:product][:categories].present?
        params[:product][:categories].each do |cate|
          @save_cate=CategoriesProducts.new(category_id: cate, product_id: @product.id)
          @save_cate.save
        end
      end
      redirect_to action: :index
    end
	end

	def destroy
		Product.destroy(params[:id])
		redirect_to action: :index
	end

  private
  def product_params
    params.require(:product).permit(:image, :product_name, :price, :type, :user_id, :description)
  end
end