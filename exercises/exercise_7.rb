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
class Store < ActiveRecord::Base
  validates :name, :mens_apparel, :womens_apparel, presence: true
  validates :name, length: { minimum: 3 }
end

class Employee < ActiveRecord::Base
  validates :first_name, :last_name,:hourly_rate, :store_id, presence: true
  validates :hourly_rate, comparison: {greater_than:"40"}
end