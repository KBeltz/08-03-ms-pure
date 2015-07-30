class AddMapImageToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :map_image, :string
  end
end
