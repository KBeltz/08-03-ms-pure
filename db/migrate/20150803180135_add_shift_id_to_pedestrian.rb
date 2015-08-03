class AddShiftIdToPedestrian < ActiveRecord::Migration
  def change
    add_column :pedestrians, :shift_id, :integer
  end
end
