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

class Employee < ActiveRecord::Base
  #first name and last name presence 
  validates :first_name, :last_name, presence: true 
  # have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: {only_integer: true, less_than_or_equal_to: 200, greater_than_or_equal_to: 40 }
  #Employees must always have a store that they belong to 
  belongs_to :store 
end 


class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, :mens_apparel, :womens_apparel, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }

end

puts "Enter name for a new store"
user_answer = gets.chomp.to_s

user_store = Store.create(name: user_answer)


p user_store.errors.messages.to_s
