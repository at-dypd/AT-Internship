class CreateCatNews < ActiveRecord::Migration
  def change
    create_table :cat_news do |t|
      t.integer :new_id
      t.integer :cat_id

      t.timestamps null: false
    end
  end
end
