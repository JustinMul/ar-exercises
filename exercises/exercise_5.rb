require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "this is the total sum: #{Store.sum(:annual_revenue)}"
puts "this is the average: #{Store.sum(:annual_revenue)/Store.count}"

@overOneMil = Store.where("annual_revenue > ?", 1000000)
puts @overOneMil.count