class Comment < ActiveRecord::Base
	has_one :user, foreign_key: :user_id
	has_many :reply, class_name: "Comment", foreign_key: :comment_id
	belongs_to :new, foreign_key: :new_id
end
