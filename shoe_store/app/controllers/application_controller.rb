class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :authenticate_user!
	before_action :sidebar
  def hello
    render html: "hello, world!"
  end

  def sidebar
  	@cate_sidebar = Category.all.includes(:products)
  end
end
