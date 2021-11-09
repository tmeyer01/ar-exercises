require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 1)
@store1.employees.create(first_name: "Jimmy", last_name: "Muscles", hourly_rate: 99960)
@store1.employees.create(first_name: "Will", last_name: "Burr", hourly_rate: 34)
@store1.employees.create(first_name: "Chebber", last_name: "Trevour", hourly_rate: 22)
@store1.employees.create(first_name: "Old", last_name: "Pounder", hourly_rate: 360)
@store2.employees.create(first_name: "Dangerous ", last_name: "Donny", hourly_rate: 6)
@store2.employees.create(first_name: "Uncle", last_name: "Bob", hourly_rate: 160)
@store2.employees.create(first_name: "Bradley", last_name: "Wiggins", hourly_rate: 610)
@store2.employees.create(first_name: "Chris", last_name: "Froome", hourly_rate: 620)
