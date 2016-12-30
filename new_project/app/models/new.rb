class New < ActiveRecord::Base
	has_many :cat_news, foreign_key: :new_id
end
