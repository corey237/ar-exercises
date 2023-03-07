require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
thornhill = Store.create(name: "Thornhill", annual_revenue: 400000, mens_apparel: true, womens_apparel: true)
barrie = Store.create(name: "Barrie", annual_revenue: 550000, mens_apparel: false, womens_apparel: true)
oshawa = Store.create(name: "Oshawa", annual_revenue: 750000, mens_apparel: true, womens_apparel: false)
@mens_stores = Store.where(mens_apparel: 'true')

@mens_stores.each do |store|
  puts "Name: #{store.name} Annual Revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue > 1000000")
@womens_stores.each do |store|
  puts "Name: #{store.name} Annual Revenue: #{store.annual_revenue}"
end

