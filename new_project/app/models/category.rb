class Category < ActiveRecord::Base
	has_many :cats_news, foreign_key: :cat_id
	belongs_to :cats_news, foreign_key: :cat_id
	has_many :news, through: :cats_news
end
