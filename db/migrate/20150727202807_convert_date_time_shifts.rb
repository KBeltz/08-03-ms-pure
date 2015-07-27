class ConvertDateTimeShifts < ActiveRecord::Migration
  def change
    remove_column :shifts, :time, :time
    remove_column :shifts, :date, :date

    add_column :shifts, :start_time, :datetime
    add_column :shifts, :end_time, :datetime
  end
end
