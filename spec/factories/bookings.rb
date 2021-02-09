# frozen_string_literal: true

FactoryBot.define do
  factory :booking do
      association :user
      association :session

    end
  end