class RemoveLocationIdFromPedestrians < ActiveRecord::Migration
  def change
    remove_column :pedestrians, :location_id, :integer
  end
end
