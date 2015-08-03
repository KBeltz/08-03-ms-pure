# == Schema Information
#
# Table name: shifts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  location_id :integer
#  weather_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  start_time  :datetime
#  end_time    :datetime
#

class Shift < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :pedestrians
  has_many :cyclists
  
  # TODO Add relationship to Weather.
end
