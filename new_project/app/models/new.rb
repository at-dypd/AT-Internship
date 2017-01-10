class New < ActiveRecord::Base
	has_many :cats_news, foreign_key: :new_id
	has_many :comment, foreign_key: :post_id
	has_many :categories, through: :cats_news
	belongs_to :user
end
