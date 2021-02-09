# frozen_string_literal: true

class Session < ApplicationRecord
  has_many :bookings
  belongs_to :instructor
  validates :name, presence: true
  validates :cost, presence: true
  validates :day, presence: true
end
