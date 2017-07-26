# enter the details of any client: name, age, address, email, phone number, number of children, decor theme, budget

# create an empty hash to store all of the customer's information
client_profile = {}

# get user input

puts "Name"
  client_name = gets.chomp.downcase

puts "Age"
  client_age = gets.chomp.to_i

puts "Address"
  client_address = gets.chomp.downcase

puts "Email"
  client_email = gets.chomp.downcase

puts "Phone Number"
  client_number = gets.chomp.to_i

puts "Number of Children"
  child_count = gets.chomp.to_i

puts "Decor Theme"
  decor_theme = gets.chomp.downcase

puts "Budget"
  budget = gets.chomp.to_i


