class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :products, dependent: :destroy
  has_many :comments, dependent: :destroy
  mount_uploader :avatar, ImageUploader
  has_many :product_ordered, ->{order(UsersController.product_ordered_option).limit(15)}, class_name: "Product"
end
