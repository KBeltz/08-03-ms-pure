# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  username    :string
#  email       :string
#  password    :string
#  admin       :boolean
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
