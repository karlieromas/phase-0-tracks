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


# add all of the client's information to the client_profile hash
client_profile[:client_name] = client_name
client_profile[:client_age] = client_age
client_profile[:client_address] = client_address
client_profile[:client_email] = client_email
client_profile[:client_number] = client_number
client_profile[:child_count] = child_count
client_profile[:decor_theme] = decor_theme
client_profile[:budget] = budget

p client_profile

# now ask the client if they would like to update any information, if not, type 'none' and move on
# if the client enters a key, ask for a new value for that key and update
puts "If you see you have made any mistakes, please type in a label that you would like to update and your desired value. Otherwise type 'none'"
# get the client's answer
answer = gets.chomp.downcase

if answer == 'none'
  puts "Thank you for your information! Your profile is now complete and saved!"
else
  new_value = gets.chomp
  client_profile[answer.to_sym] = new_value
end

p client_profile



