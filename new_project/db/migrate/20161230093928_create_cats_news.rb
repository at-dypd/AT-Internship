class CreateCatsNews < ActiveRecord::Migration
  def change
    create_table :cats_news do |t|
      t.integer :cat_id
      t.integer :post_id

      t.timestamps null: false
    end
    	add_foreign_key :cats_news, :news, column: :new_id, primary_key: :id
  	add_foreign_key :cats_news, :categories, column: :cat_id, primary_key: :id
  end
end
