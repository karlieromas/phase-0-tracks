require 'sqlite3'

db = sqlite3::Database.new("pups.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pups(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

db.execute(create_table_cmd)

puts "Welcome to Pup Aupair!"
puts "What pup went out today?"

pup_name = gets.chomp.downcase

puts "What time did #{pup_name} go out? The hour is fine! :) "
# get the time the dog went out- store time in db
time = gets.chomp.to_i

puts "Great- at #{time} what did #{pup_name} do while you were out? Type 'peed','pooped', 'both' or 'nothing'."
business_done = gets.chomp.downcase

if business_done == 'peed'
puts "Wow! Wuddah good pup!"
elsif
  business_done == 'pooped'
puts "Wow! Wuddah good pup!"
elsif
  business_done == 'both'
puts "Dang! I think #{pup_name} deserves a treat :) "
else
  business_done == 'nothing'
puts "Shoot, better keep an eye on them and take them out shortly."
end
# save answer into pup db
# print pup's name, time they went out and what they did
db.execute("INSERT INTO pups (id, name) VALUES (1, '#{pup_name}', '#{time}')")

# def print_history
#     puts "#{pup_name}'s History:"
#     @pup_info.each do |time, business|
#       puts "#{pup_name} went out last at #{time} and #{business}."
#     end
#   end

puts "We have saved the time and business info for #{pup_name}. Please type 'done' to exit."
answer = gets.chomp.downcase
if answer == 'done'
  print_history
end


# puts "Did you take out any more pups? If so, please type their name or type 'done'."
# more_pups = gets.chomp.downcase
# if more_pups == 'done'
#   puts "Thanks for using Pup Aupair! We have saved #{pup_name}'s info."

