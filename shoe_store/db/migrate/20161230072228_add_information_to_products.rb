class AddInformationToProducts < ActiveRecord::Migration
  add_column :products, :type, :string
  add_column :products, :user_id, :integer
  add_column :products, :description, :string
  add_column :products, :views_count, :integer
  add_column :products, :likes_count, :integer
  add_foreign_key :products ,:users, column: :user_id, primary_key: :id
end
