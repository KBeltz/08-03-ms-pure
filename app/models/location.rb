# == Schema Information
#
# Table name: locations
#
#  id            :integer          not null, primary key
#  location_name :string
#  url           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Location < ActiveRecord::Base
  validates :location_name, presence: true
  validates :url, presence: true
end
