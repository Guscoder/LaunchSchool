#usernumber.rb

puts "Choose a number between 0 and 100"

user_number = gets.chomp.to_i

def guess(yournumber)
  if yournumber < 0
    puts "#{yournumber} must be above 0!"
  elsif yournumber <= 50
    puts "#{yournumber} is between 0 and 50"
  elsif yournumber <= 100
    puts "#{yournumber} is between 51 and 100"
  else 
    puts "#{yournumber} is over 100"
  end
end

puts guess(user_number)


def guess_case(yournumber)
  case 
  when yournumber < 0
    puts "#{yournumber} must be above 0!"
  when yournumber <= 50
    puts "#{yournumber} is between 0 and 50"
  when yournumber <= 100
    puts "#{yournumber} is between 51 and 100"
  else 
    puts "#{yournumber} is over 100"
  end
end
    
guess_case(user_number)

