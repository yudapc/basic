class Payment < ActiveRecord::Base
  has_many :payment_histories

  validates :name, :total, presence: true
end
