class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :comments , dependent: :destroy
	has_and_belongs_to_many :categories
	self.inheritance_column = nil
end
