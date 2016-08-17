class PaymentHistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :student
  belongs_to :payment

  validates :student_id, :payment_id, :user_id, :total, presence: true
end
