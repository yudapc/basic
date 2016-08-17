class PaymentStatus < ActiveRecord::Base
  has_many :students
end
