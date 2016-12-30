class Category < ActiveRecord::Base
	has_many :cat_news, foreign_key: :cat_id
end
