class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :weather
    end
  end
end
