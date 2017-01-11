class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :confirm_token
      t.timestamp :confirm_at
      t.timestamp :confirm_send_at

      t.timestamps
    end
  end
end
