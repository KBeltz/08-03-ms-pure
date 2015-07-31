class ChangeCyclistTable < ActiveRecord::Migration
  def change
    remove_column :cyclists, :female_with_helmet, :integer
    remove_column :cyclists, :female_no_helmet, :integer
    remove_column :cyclists, :female_sidewalk, :integer
    remove_column :cyclists, :female_wrong_way, :integer
    remove_column :cyclists, :male_with_helmet, :integer
    remove_column :cyclists, :male_no_helmet, :integer
    remove_column :cyclists, :male_sidewalk, :integer
    remove_column :cyclists, :male_wrong_way, :integer

    add_column :cyclists, :quantity, :integer
    add_column :cyclists, :sex, :boolean
    add_column :cyclists, :helmet, :boolean
    add_column :cyclists, :sidewalk, :boolean
    add_column :cyclists, :wrong_way, :boolean
  end
end
