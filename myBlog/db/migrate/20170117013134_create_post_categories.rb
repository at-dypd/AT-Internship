class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.integer :post_id
      t.integer :category_id
      t.timestamps null: false
    end
      add_foreign_key :post_categories, :posts, column: :post_id, primary_key: :id
      add_foreign_key :post_categories, :categories, column: :category_id, primary_key: :id

  end
end
