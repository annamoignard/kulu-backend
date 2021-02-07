class Booking < ApplicationRecord
  has_many :clients
  belongs_to :user
  belongs_to :session
  validates :session_id, presence: true
  validates :user_id, presence: true
end
