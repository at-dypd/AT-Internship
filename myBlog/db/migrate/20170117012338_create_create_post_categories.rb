class CreateCreatePostCategories < ActiveRecord::Migration
  def change
    create_table :create_post_categories do |t|
      t.integer :comment_id
      t.integer :post_id
      t.timestamps null: false
    end
  end
end
