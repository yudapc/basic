class Student < ActiveRecord::Base
  belongs_to :payment_status
  has_many :payment_histories

  validates :nis, :full_name, :gender, presence: true
end
