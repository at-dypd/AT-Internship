class AddUserIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_foreign_key :comments, :users, column: :user_id, primary_key: :id
  end
end
