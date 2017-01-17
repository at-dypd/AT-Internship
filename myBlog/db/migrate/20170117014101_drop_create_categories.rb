class DropCreateCategories < ActiveRecord::Migration
  def change
    drop_table :create_categories
  end
end
