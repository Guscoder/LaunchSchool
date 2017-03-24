
=begin

  

=end

arr = []

puts "Enter the 1st number:"
first_num = gets.chomp.to_i
arr << first_num

puts "Enter the 2nd number:"
second_num = gets.chomp.to_i
arr << second_num

puts "Enter the 3rd number:"
third_num = gets.chomp.to_i
arr << third_num

puts "Enter the 4th number:"
fourth_num = gets.chomp.to_i
arr << fourth_num

puts "Enter the 5th number:"
fifth_num = gets.chomp.to_i
arr << fifth_num

puts "Enter the 6th number:"
sixth_num = gets.chomp.to_i

if arr.include?(sixth_num) 
  puts "The number #{sixth_num} appears in #{arr}."
else 
  puts "The number #{sixth_num} does not appear in #{arr}."
end