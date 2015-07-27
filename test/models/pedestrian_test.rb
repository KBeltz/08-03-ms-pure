# == Schema Information
#
# Table name: pedestrians
#
#  id          :integer          not null, primary key
#  female      :integer
#  male        :integer
#  disabled    :integer
#  other       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#

require 'test_helper'

class PedestrianTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
