#usernumber.rb

puts "Choose a number between 0 and 100"

user_number = gets.chomp.to_i

  if user_number <= 50
    puts "#{user_number} is between 0 and 50"
  elsif user_number <= 100
    puts "#{user_number} is between 51 and 100"
  else 
    puts "#{user_number} is over 100"
  end



