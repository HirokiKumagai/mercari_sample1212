FactoryBot.define do
  factory :user do
    sequence(:nickname) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:password) { |n| "TESTPASSWORD#{n}"}
    sequence(:password_confirmation) { |n| "TESTPASSWORD#{n}"}
  end

  factory :user_no_nickname, class: User do
    nickname nil
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:password) { |n| "TESTPASSWORD#{n}"}
    sequence(:password_confirmation) { |n| "TESTPASSWORD#{n}"}
  end

  factory :user_no_email, class: User do
    sequence(:nickname) { |n| "TEST_NAME#{n}"}
    email nil
    sequence(:password) { |n| "TESTPASSWORD#{n}"}
    sequence(:password_confirmation) { |n| "TESTPASSWORD#{n}"}
  end

  factory :user_no_password, class: User do
    sequence(:nickname) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "TEST#{n}@example.com"}
    password nil
    sequence(:password_confirmation) { |n| "TESTPASSWORD#{n}"}
  end

end
