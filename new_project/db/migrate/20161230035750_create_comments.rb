class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :comment_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_foreign_key :comments, :news, column: :new_id, primary_key: :id
  end
end
