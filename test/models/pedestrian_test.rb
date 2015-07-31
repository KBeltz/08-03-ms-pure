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

require 'test_helper'

class PedestrianTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
