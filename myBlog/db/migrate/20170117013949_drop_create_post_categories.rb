class DropCreatePostCategories < ActiveRecord::Migration
  def change
    drop_table :create_post_categories
  end

end
