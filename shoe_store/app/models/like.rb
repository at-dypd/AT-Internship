class Like < ActiveRecord::Base
	belongs_to :product, dependent: :destroy, foreign_key: "product_id"
	belongs_to :user, dependent: :destroy, foreign_key: "user_id"
end
