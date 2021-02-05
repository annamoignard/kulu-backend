class User < ApplicationRecord
  has_many :bookings
  has_one :instructor
  has_secure_password
  validates :username, presence: true, uniqueness:true
  validates :email, presence: true, uniqueness:true
end
