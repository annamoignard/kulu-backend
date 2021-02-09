# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence :email  do |n| 
      "testuser#{n}@test.com"
    end
    sequence :username  do |n| 
      "testuser#{n}"
    end
    password { "password" } 
  end
end
