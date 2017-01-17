class CreateCreateCategories < ActiveRecord::Migration
  def change
    create_table :create_categories do |t|
      t.string :namecategory

      t.timestamps null: false
    end
  end
end
