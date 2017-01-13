class ChangeCommentIdTypeDataInComments < ActiveRecord::Migration
  def change
    change_column(:comments, :comment_id, :integer )
  end
end
