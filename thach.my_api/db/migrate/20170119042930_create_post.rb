class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :content
    	t.integer :user_id
    	t.integer :views_count, :null => true
    	t.timestamps :null => true
    end
  end
end
