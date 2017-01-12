class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :age, :integer
  end
end
