FactoryBot.define do
  factory :user do
    sequence(:nickname) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:password) { |n| "TESTPASSWORD#{n}"}
    sequence(:password_confirmation) { |n| "TESTPASSWORD#{n}"}
  end
end
