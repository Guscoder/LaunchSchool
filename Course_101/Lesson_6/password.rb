
PASSWORD = "secret"
USERNAME = "Candy"

loop do 
  puts "Please enter your password:"
  user_password = gets.chomp

  puts "Enter username:"
  user_name = gets.chomp

  if user_password == PASSWORD && user_name == USERNAME
    break
  else
    puts "Authorization failed!"
  end
end

puts "Welcome!"