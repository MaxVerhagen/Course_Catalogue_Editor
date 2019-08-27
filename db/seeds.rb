# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
teachers = {:name => "Alice", :authoritative => "normal", :Major => "software system", :password => "123"}
{:name => "Bob", :authoritative => "normal", :Major => "computer science", :password => "1234"}
{:name => "Eve", :authoritative => "normal", :Major => "Accounting", :password => "4321"}
{:name => "Ali", :authoritative => "normal", :Major => "Health Scinece", :password => "1523"}
{:name => "Breet", :authoritative => "normal", :Major => "Chinese", :password => "1623"}

  teachers.each do |teacher|
  Teacher.create!(teacher)
 end
 