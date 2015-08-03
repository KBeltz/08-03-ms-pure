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

class Cyclist < ActiveRecord::Base
  belongs_to :shift

  validates :quantity, presence: true
end
