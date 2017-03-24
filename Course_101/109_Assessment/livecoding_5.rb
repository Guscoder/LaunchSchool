
=begin

Req
  user enters integer
  integere must be greater than 0
  asks if user wants to determine the sum or product of numbers between 1 and integer
  outputs either sum or product of numbers

Prog
  get given integer
  ensure integere is greater than 0 or ask for another integer
  ask for sum or product
  get answer
  calculate sum or product and output

=end

def integer_work
  user_int = nil
  user_pref = ""
  loop do
    puts "Please enter an integer greater than 0."
    user_int = gets.chomp.to_i
    break if user_int > 0
    puts "Your integer must be GREATER than 0"
  end
  loop do 
    puts "Enter 's' to compute the sum,'p' to compute the product."
    user_pref = gets.chomp.downcase
    break if user_pref == 's' || user_pref == 'p' 
    puts "You did not enter s or p. Try again."
  end
  if user_pref == 's'
    result = sum(user_int)
    puts "The sum of the integers between 1 and #{user_int} is #{result}."
  elsif user_pref == 'p'
    result = product(user_int)
    puts "The product of the integers between 1 and #{user_int} is #{result}."
  end
end

def sum(int)
  final_sum = 0
  (1..int).each do |num|
    final_sum += num
  end
  final_sum
end


def product(int)
  final_product = 1
  (1..int).each do |num|
    final_product *= num
  end
  final_product
end

integer_work
