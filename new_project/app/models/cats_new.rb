class CatsNew < ActiveRecord::Base
	belongs_to :new, foreign_key: :new_id
	belongs_to :category, foreign_key: :cat_id
end
