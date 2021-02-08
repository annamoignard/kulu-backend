# frozen_string_literal: true

FactoryBot.define do
  factory :booking do
    sequence :session_id do |n|
      "Session no.#{n}"
    end
    sequence :user_id do |n|
      "User no.#{n}"
    end
  end
end
