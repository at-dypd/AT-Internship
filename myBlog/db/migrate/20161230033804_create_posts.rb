class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :namepost
      t.string :title
      t.string :containt
      t.timestamps null: false
    end
  end
end
