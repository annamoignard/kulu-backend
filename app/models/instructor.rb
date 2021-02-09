# frozen_string_literal: true

class Instructor < ApplicationRecord
  belongs_to :user
  has_many :sessions
  validates :name, presence: true
end
