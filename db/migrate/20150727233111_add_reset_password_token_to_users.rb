class AddResetPasswordTokenToUsers < ActiveRecord::Migration
  def change
    add_column :reset_password_token, :string
    add_column :reset_password_sent_at, :datetime
  end
end
