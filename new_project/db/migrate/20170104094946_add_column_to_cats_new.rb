class AddColumnToCatsNew < ActiveRecord::Migration
  def change
  	add_column :cats_news, :new_id, :integer
  end
end
