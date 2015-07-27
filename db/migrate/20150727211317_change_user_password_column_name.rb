class ChangeUserPasswordColumnName < ActiveRecord::Migration
  def change
    remove_column :users, :password, :string

    add_column :users, :encrypted_password, :string
  end
end
