class AddedDeviseColumnsToUsers < ActiveRecord::Migration[8.0]
  def change 
    ## Recoverable
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime

    # t.string   :reset_password_token
    # t.datetime :reset_password_sent_at

    ## Rememberable
    add_column :users, :remember_created_at, :datetime

    # t.datetime :remember_created_at

    ## Trackable
    add_column :users, :sign_in_count, :integer

    # t.integer  :sign_in_count, default: 0, null: false
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime

    # t.datetime :current_sign_in_at
    # t.datetime :last_sign_in_at
    add_column :users, :current_sign_in_ip, :string
    add_column :users, :last_sign_in_ip, :string

    # t.string   :current_sign_in_ip
    # t.string   :last_sign_in_ip

    ## Confirmable
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string

    # t.string   :confirmation_token
    # t.datetime :confirmed_at
    # t.datetime :confirmation_sent_at
    # t.string   :unconfirmed_email # Only if using reconfirmable
  end
end
