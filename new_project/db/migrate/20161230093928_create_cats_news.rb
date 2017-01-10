class CreateCatsNews < ActiveRecord::Migration
  def change
    create_table :cats_news do |t|
      t.integer :cat_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
