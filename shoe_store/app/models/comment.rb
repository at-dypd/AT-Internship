class Comment < ActiveRecord::Base
	belongs_to :product, foreign_key: "product_id"
	belongs_to :user, foreign_key: "user_id"
	has_many :replies, class_name: "Comment", foreign_key: "comment_id"
end
