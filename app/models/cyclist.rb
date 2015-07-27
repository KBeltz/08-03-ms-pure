# == Schema Information
#
# Table name: cyclists
#
#  id                 :integer          not null, primary key
#  female_with_helmet :integer
#  female_no_helmet   :integer
#  female_sidewalk    :integer
#  female_wrong_way   :integer
#  male_with_helmet   :integer
#  male_no_helmet     :integer
#  male_sidewalk      :integer
#  male_wrong_way     :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Cyclist < ActiveRecord::Base
  belongs_to :shift
end
