
puts "What is your name?"
user_name = gets.chomp

if user_name[-1] == "!"
  puts "HELLO #{user_name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end

