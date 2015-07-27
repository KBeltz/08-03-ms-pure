class AddLocationToCyclists < ActiveRecord::Migration
  def change
    add_column :cyclists, :location_id, :integer
  end
end
