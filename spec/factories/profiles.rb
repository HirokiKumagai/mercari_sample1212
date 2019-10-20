FactoryBot.define do
  factory :profile do
    sequence(:first_name) { |n| "TEST_NAME#{n}"}
    sequence(:last_name) { |n| "TEST#{n}@example.com"}
    sequence(:first_name_kana) { |n| "TEST_NAME#{n}"}
    sequence(:last_name_kana) { |n| "TEST#{n}@example.com"}
    tel {1234}
    sequence(:postal_code) { |n| n }
    sequence(:prefecture) { |n| n }   
    sequence(:city) { |n| "#{n}city"} 
    sequence(:address_number) { |n| "#{n}500000"} 
    sequence(:building) { |n| "#{n}building"}
    sequence(:introduction) { |n| "I am #{n}"}
    sequence(:avatar) { |n| "#{n}.png"}
    birthday { 19901111 }
  end
end
