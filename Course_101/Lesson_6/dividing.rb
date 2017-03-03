def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

integer_1 = nil
integer_2 = nil

loop do
  puts "Enter your first integer:"
  integer_1 = gets.chomp
  break if valid_number?(integer_1)
  puts "Invalid input. Only integers are allowed!"
end

loop do
  puts "Enter your second integer:"
  integer_2 = gets.chomp
  break if valid_number?(integer_2)
  puts "Invalid input. Only integers are allowed!"
end

  result = integer_1.to_i / integer_2.to_i
  puts "#{integer_1} / #{integer_2} is #{result}"

