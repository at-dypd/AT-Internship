class AddCommentIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :comment_id, :integer
  	add_foreign_key :comments ,:comments, column: :comment_id, primary_key: :id
  end
end
