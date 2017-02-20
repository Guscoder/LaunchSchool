loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break

end

puts 'This is outside all loops.'



iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
    iterations +=1

  break if iterations > 5
end


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
end


say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  if counter > 5
    say_hello = false
  end
end



numbers = []
counter = 0

while numbers.size < 5
  new = rand(0..99)
  numbers = numbers.push(new)
  counter += 1  
end

while numbers.size < 5
  numbers << rand(100)  
end
puts numbers


count = 1

until count > 10
  puts count
  count += 1
end


numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1
end

for i in 1..100
  puts i if i.odd?
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']
counter = 0

for friend in friends do 
  puts "Hi #{friends[counter]}!"
  counter += 1
end


count = 1

loop do
  if count.odd?
    puts count.to_s + " odd"
  else
    puts count.to_s + " even"
  end
  break if count == 5
    count += 1

end


loop do
  number = rand(100)
  puts number 
   if number.between?(0,10) 
    break
  end
end



process_the_loop = [true, false].sample

  if process_the_loop == true
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end



loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again."
  end
end



numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end

puts numbers


names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end


5.times do |index|
  puts index
  break if index == 2
end


number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end


number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  if number_a || number_b == 5
    puts "5 was reached!"
    break
  end
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end







