class ChangeCommentIdTypeInComments < ActiveRecord::Migration
  def change
    def self.up
      change_column :comments, :comment_id, :integer
    end

    def self.down
      change_column :comments, :comment_id, :string
    end
  end
end
