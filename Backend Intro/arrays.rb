#arrays

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(3)

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

if arr.include?(3)
  puts "#{number} is indeed in the array."
end

#3

arr = [["test", "hello", "world"],["example", "mem"]]

arr.last.first

#7

numbers = [1,2,3,4,5]
new_numbers = []

numbers.each do |x|
  new_numbers << x + 2
end

p numbers
p new_numbers

