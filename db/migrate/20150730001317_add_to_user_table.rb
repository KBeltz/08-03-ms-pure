class AddToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string

    User.update_all("full_name = (first_name || ' ' || last_name)")
  end
end
