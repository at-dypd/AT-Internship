class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :content
    end
  end
end
