require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel:true )
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

#Fetching collection of stores that only carry mens apparel
#conditional
@mens_stores = Store.where(mens_apparel: true)

#Loop 
@mens_stores.each do |elem|
  p "Store name: " + elem.name + ".  The annual revenue $" + elem.annual_revenue.to_s
end

#Fetching collect of stores that only carry womens appareal
#Conditional check for womens apparel ad annual rev over a million dollars
#conditional statment is put into string to avoid malicious intent
@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

#loop
@womens_stores.each do |elem|
puts "Store name: " + elem.name + ".  The annual revenue $" + elem.annual_revenue.to_s
end
