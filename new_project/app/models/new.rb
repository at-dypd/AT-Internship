class New < ActiveRecord::Base
	has_many :cats_news, foreign_key: :new_id
	has_many :comments, foreign_key: :new_id
	has_many :categories, through: :cats_news
	belongs_to :user
	has_many :likes, foreign_key: :new_id
end
