class Session < ApplicationRecord
  has_many :bookings
  belongs_to :instructor
end
