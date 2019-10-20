FactoryBot.define do
  factory :credit do
    sequence(:number) { |n| n }
    sequence(:expiration_date) { |n| n }
    sequence(:secure_code) { |n| n }
  end
end