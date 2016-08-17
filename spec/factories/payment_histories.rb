FactoryGirl.define do
  factory :payment_history do
    student
    payment
    total 15_000
    paid_at 1.days.ago
    user
  end
end
