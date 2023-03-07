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
@store2.employees.create(first_name: "Corey", last_name: "Silver", hourly_rate: 50)
@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 70)
@store2.employees.create(first_name: "Jane", last_name: "Miller", hourly_rate: 40)
@store1.employees.create(first_name: "Peter", last_name: "Robinson", hourly_rate: 80)
@store1.employees.create(first_name: "Ali", last_name: "Johnson", hourly_rate: 70)
pp @store1.employees.all
pp @store2.employees.all


