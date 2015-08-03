# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  full_name              :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :shifts

  after_create :create_full_name
  before_save :update_full_name

  # Adds full_name to the database for proper display in ActiveAdmin Rampage filter fields.
  def create_full_name
    self.update(full_name: (first_name + ' ' + last_name))
  end
  # Updates full_name column when first or last name is edited.
  def update_full_name
    self.full_name = first_name + ' ' + last_name
  end


  # TODO def display_name
  # full_name? test this.
  # end

end
