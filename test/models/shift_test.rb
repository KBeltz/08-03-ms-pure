# == Schema Information
#
# Table name: shifts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  location_id :integer
#  weather_id  :integer
#  time        :time
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ShiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
