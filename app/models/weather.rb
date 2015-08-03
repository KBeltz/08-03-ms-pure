# == Schema Information
#
# Table name: weathers
#
#  id      :integer          not null, primary key
#  weather :string
#

class Weather < ActiveRecord::Base
  validates :weather, presence: true
  has_many :shifts

  def display_name
    self.weather
  end
end
