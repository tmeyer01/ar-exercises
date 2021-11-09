require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue_for_all_store = Store.sum(:annual_revenue)
@average_annual_revenue = Store.average(:annual_revenue).to_f
@store_that_generate_1m = Store.where("annual_revenue > 1000000").count

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>"
puts "Total Revenue:"
p @total_revenue_for_all_store
puts "---"
puts "Average annual revenue for all stores:"
p @average_annual_revenue
puts "---"
puts "Number of stores that are generating $1M or more in annual sales"
p @store_that_generate_1m
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>"