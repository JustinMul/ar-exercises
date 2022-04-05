require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Use this for future reference https://guides.rubyonrails.org/active_record_validations.html 
class Store < ActiveRecord::Base
  validates :name, :mens_apparel, :womens_apparel, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true , greater_than:40}
end

class Employee < ActiveRecord::Base
  validates :first_name, :last_name,:hourly_rate, :store_id, presence: true
  validates :hourly_rate, numericality: {greater_than:40, less_than:200}
end

puts "please enter a store name"
store_name = gets.chomp.to_s

store = Store.create(name: store_name, mens_apparel: false, womens_apparel: true)
# 