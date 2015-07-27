class Weather < ActiveRecord::Base
  validates :weather, presence: true
end
