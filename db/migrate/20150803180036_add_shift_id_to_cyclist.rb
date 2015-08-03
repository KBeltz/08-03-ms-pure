class AddShiftIdToCyclist < ActiveRecord::Migration
  def change
    add_column :cyclists, :shift_id, :integer
  end
end
