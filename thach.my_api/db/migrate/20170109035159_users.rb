class Users < ActiveRecord::Migration
  def change
  	create_table :users do |t|
    	t.string :email
    	t.string :password
    	t.integer :comfirm_token
    	t.timestamp :confirm_at
    	t.timestamp :comfirm_send_at
    end
  end
end
