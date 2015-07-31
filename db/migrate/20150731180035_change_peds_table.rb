class ChangePedsTable < ActiveRecord::Migration
  def change
    remove_column :pedestrians, :female, :integer
    remove_column :pedestrians, :male, :integer
    remove_column :pedestrians, :disabled, :integer
    remove_column :pedestrians, :other, :integer

    add_column :pedestrians, :quantity, :integer
    add_column :pedestrians, :sex, :boolean
    add_column :pedestrians, :disabled, :boolean
    add_column :pedestrians, :other, :boolean
  end
end
