require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Bob", last_name: "Man", hourly_rate: 60)
@store1.employees.create(first_name: "James", last_name: "Ceron", hourly_rate: 160)
@store1.employees.create(first_name: "Sarah", last_name: "Kim", hourly_rate: 140)
@store2.employees.create(first_name: "Joe", last_name: "Chen", hourly_rate: 220)