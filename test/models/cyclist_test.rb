# == Schema Information
#
# Table name: cyclists
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer
#  sex        :boolean
#  helmet     :boolean
#  sidewalk   :boolean
#  wrong_way  :boolean
#  shift_id   :integer
#

require 'test_helper'

class CyclistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
