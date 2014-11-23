class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|      
      t.string :first_name, null: false, limit: 100
      t.string :last_name, null: false, limit: 100
      t.string :email, null: false, limit: 255      
      t.string :encrypted_password, null: false, limit: 100
      t.string  :reset_password_token, limit: 255
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip, limit: 50
      t.string   :last_sign_in_ip, limit: 50
      t.integer  :failed_attempts, default: 0, null: false
      t.datetime :locked_at      
      t.timestamps
    end

    add_index :users, :email, name: "index_users_on_email", unique: true
    add_index :users, :reset_password_token, name: "index_users_on_reset_password_token", unique: true    
    
  end
end