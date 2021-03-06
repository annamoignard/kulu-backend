# frozen_string_literal: true

class Booking < ApplicationRecord
  has_many :clients
  belongs_to :user
  belongs_to :session
end
