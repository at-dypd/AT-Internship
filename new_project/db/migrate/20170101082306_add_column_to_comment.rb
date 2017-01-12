class AddColumnToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :new_id, :integer
  end
end
