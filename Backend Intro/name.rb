puts "What's your first name?"

first_name = gets.chomp

puts "What's your last name?"

last_name = gets.chomp

full_name = first_name + " " + last_name

puts "Hello " + full_name

10.times do
  puts full_name
end
