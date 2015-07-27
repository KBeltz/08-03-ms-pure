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

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :location_id, presence: true

  has_many :shifts
end
