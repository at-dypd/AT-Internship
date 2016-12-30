class CatNew < ActiveRecord::Base
	has_one :new, foreign_key: :new_id
	has_one :category, foreign_key: :cat_id
end
