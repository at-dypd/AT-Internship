class Comment < ActiveRecord::Base
	belongs_to :product
	belongs_to :user
	has_many :replies, class_name: "Comment",
                          foreign_key: "comment_id"
end
