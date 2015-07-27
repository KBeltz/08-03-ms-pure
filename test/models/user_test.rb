# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string
#  email              :string
#  location_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
