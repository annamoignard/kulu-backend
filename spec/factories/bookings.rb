FactoryBot.define do
  factory :booking do
    sequence :session_id do |n|
      "Session no.#{n}"
    end
  end
end
