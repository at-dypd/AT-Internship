class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :user, foreign_key: "user_id"
	has_many :comments , dependent: :destroy
	has_and_belongs_to_many :categories
	self.inheritance_column = nil
	before_create :set_default

  private
    def set_default
      self.views_count = 0
      self.likes_count = 0
    end
end
