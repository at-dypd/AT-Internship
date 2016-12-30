class AddColumnToNew < ActiveRecord::Migration
  def change
  	add_column :news, :vote, :integer
  	add_column :news, :description, :string
  	add_column :news, :picture, :string
  end
end
