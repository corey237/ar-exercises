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
test = Store.create(name: "test", annual_revenue: 190000, mens_apparel: false, womens_apparel: false)
test2 = @store1.employees.create(first_name: "Test2", last_name: "User", hourly_rate: 20)
puts test.errors.full_messages
puts test2.errors.full_messages