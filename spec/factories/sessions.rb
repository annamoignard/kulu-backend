# frozen_string_literal: true

FactoryBot.define do
  factory :session do
    sequence :time do |n|
      "Session no.#{n}"
    end
    name { 'classname' }
  end
end
