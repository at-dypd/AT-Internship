class AddColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :address, :string
  	add_column :users, :age, :integer
  	add_column :users, :phone, :string
  	add_column :users, :gender, :integer
  end
end
