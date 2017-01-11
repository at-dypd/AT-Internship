class AddRoleAndAvatarToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :role, :string
    add_column :users, :avatar, :string
  end
end
