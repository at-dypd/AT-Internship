class CreateAddPostIdToComments < ActiveRecord::Migration
  def change
    add_foreign_key :comments, :posts, column: :post_id, primary_key: :id
  end
end
