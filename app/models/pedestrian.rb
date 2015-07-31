# == Schema Information
#
# Table name: pedestrians
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer
#  sex        :boolean
#  disabled   :boolean
#  other      :boolean
#

class Pedestrian < ActiveRecord::Base
  belongs_to :shift
end
