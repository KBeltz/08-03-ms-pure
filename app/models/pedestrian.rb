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
#  shift_id   :integer
#

class Pedestrian < ActiveRecord::Base
  belongs_to :shift

  validates :quantity, presence: true
end
