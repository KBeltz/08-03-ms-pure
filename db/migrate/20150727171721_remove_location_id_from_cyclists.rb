class RemoveLocationIdFromCyclists < ActiveRecord::Migration
  def change
    remove_column :cyclists, :location_id, :integer
  end
end
