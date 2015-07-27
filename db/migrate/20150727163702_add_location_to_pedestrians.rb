class AddLocationToPedestrians < ActiveRecord::Migration
  def change
    add_column :pedestrians, :location_id, :integer
  end
end
