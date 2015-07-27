# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  username    :string
#  email       :string
#  password    :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
