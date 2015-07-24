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

class User < ActiveRecord::Base
end
