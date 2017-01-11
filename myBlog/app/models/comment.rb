class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :comment, class_name: "Comment" #-> requires "parent_id" column
  has_many :replies, class_name: "Comment", foreign_key: :comment_id, dependent: :destroy
end
