# == Schema Information
#
# Table name: pedestrians
#
#  id         :integer          not null, primary key
#  female     :integer
#  male       :integer
#  disabled   :integer
#  other      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pedestrian < ActiveRecord::Base
  belongs_to :shifts
end
