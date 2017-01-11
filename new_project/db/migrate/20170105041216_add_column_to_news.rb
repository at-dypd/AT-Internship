class AddColumnToNews < ActiveRecord::Migration
  def change
  	add_column :news, :like_count, :integer
  end
end
