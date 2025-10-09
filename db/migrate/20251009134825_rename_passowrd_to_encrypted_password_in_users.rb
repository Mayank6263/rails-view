class RenamePassowrdToEncryptedPasswordInUsers < ActiveRecord::Migration[8.0]
  def up
    change_column :users, :password, :string, null: false, default: ""
    rename_column :users, :password, :encrypted_password
    # User.where(name: nil).update_all(name: "")
    change_column :users, :email, :string, null: false, default: ""
  end

  def down
    rename_column :users, :encrypted_password, :password
  end
end
