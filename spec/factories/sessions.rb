# frozen_string_literal: true

FactoryBot.define do
  factory :session do
    name { 'classname' }
    cost { 25 }
    day { 'Monday' }
    association :instructor
  end
end
