class Like < ActiveRecord::Base
	belongs_to :new, counter_cache: :like_count
end
