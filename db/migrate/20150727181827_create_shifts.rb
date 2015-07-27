class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :weather_id
      t.time :time
      t.date :date

      t.timestamps null: false
    end
  end
end
