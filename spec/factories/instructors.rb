# frozen_string_literal: true

FactoryBot.define do
  factory :instructor do
    sequence :name do |n|
      "session id #{n}"
    end
  end
end
