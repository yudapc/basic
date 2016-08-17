# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PaymentHistory.delete_all
User.delete_all
Payment.delete_all
PaymentStatus.delete_all
Student.delete_all

user = FactoryGirl.create :user, email: 'admin@example.com', password: 'password'
payment_status = FactoryGirl.create :payment_status, name: 'Lunas'
FactoryGirl.create :payment_status, name: 'Belum Lunas'
student = FactoryGirl.create :student, payment_status: payment_status
payment = FactoryGirl.create :payment
FactoryGirl.create :payment_history, student: student, payment: payment, user: user
