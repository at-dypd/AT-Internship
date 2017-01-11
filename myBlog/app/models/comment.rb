class Comment < ActiveRecord::Base
  belongs_to :post, foreign_key: :post_id, dependent: :destroy
  has_many :replies, class_name:"Comment", foreign_key: :comment_id
end
