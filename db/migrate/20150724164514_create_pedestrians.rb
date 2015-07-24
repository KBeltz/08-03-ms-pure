class CreatePedestrians < ActiveRecord::Migration
  def change
    create_table :pedestrians do |t|
      t.integer :female
      t.integer :male
      t.integer :disabled
      t.integer :other

      t.timestamps null: false
    end
  end
end
