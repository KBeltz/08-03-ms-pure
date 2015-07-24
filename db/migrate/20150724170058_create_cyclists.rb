class CreateCyclists < ActiveRecord::Migration
  def change
    create_table :cyclists do |t|
      t.integer :female_with_helmet
      t.integer :female_no_helmet
      t.integer :female_sidewalk
      t.integer :female_wrong_way
      t.integer :male_with_helmet
      t.integer :male_no_helmet
      t.integer :male_sidewalk
      t.integer :male_wrong_way

      t.timestamps null: false
    end
  end
end
