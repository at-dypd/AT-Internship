class RemoveColumnToCatsNew < ActiveRecord::Migration
  def change
  	remove_column :cats_news, :post_id
  end
end
