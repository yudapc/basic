FactoryGirl.define do
  factory :student do
    nis Faker::Number.number(8)
    full_name Faker::Name.name
    gender "L"
    payment_status
  end
end
