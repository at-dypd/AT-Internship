class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(params_category)
    if @category.save!
      flash[:notice] = "Category successfully created"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params_category)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
  def params_category
    params.require(:category).permit(:namecategory)
  end
end

