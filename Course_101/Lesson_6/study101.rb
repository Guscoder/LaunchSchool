loop do
  puts 'Just keep printing...'
  break
end


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer = 'y'
end

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end



numbers = []

while numbers.size < 5
  numbers << rand(100)
end


count = 1

until count == 11
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

for friend in friends 
  puts "Hello, #{friend}"
end


count = 1

loop do
  if count.odd?
    puts "#{count} is odd."
  elsif count.even?
    puts "#{count} is even."
  end
  break if count == 5
  count += 1
end


loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end


process_the_loop = [true, false].sample

if process_the_loop
  "The loop was processed"
elsif process_the_loop == false
  "No it wasn't"
end

    
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong try again."
  end 
end


numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size > 5
end
puts numbers


names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop 
  break if names.empty?
end


5.times do |index|
  puts index
  break if index == 2  
end

number = 0

until number == 10
  number += 1
  if number.even? 
  puts number
  else
    next
  end
end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a || number_b == 5 
  puts "5 was reached!"
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

puts "Type something:"
answer = gets.chomp
puts answer


puts "What is your age in years?"
age_years = gets.chomp
age_months = age_years.to_i * 12
puts "#{age_months}"

output_lines = 0
loop do 
  puts "How many lines do you want to print?"
  output_lines = gets.chomp
  break if output_lines.to_i >= 3
  puts "It must be more than 3 you oaf!"
end

while output_lines > 0
  puts "Launch School is the best!"
  output_lines -= 1
end


PASSWORD = secret

loop do 
  puts "Please enter your password:"
  user_entry = gets.chomp
  break if user_entry == "secret"
  puts "Invalid password!"
end

puts "Welcome!"

def reverse(string)
  myarray = []
  counter = string.size
  string.each do |x|
    myarray << string[x]
    counter -= 1
    break if counter < 0
  end


def hello
  puts "Hello"
end

def world
  puts "World"
end
 puts "#{hello} #{world}"


def car(make, model)
  puts "#{make} #{model}"

end

def time_of_day(day)
  if day
    puts "Daylight"
  else
    puts "moonlight"
end


def assign_name(name="Bob")
  return name
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36


def add(x, y)
  x + y
end


names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(name_list)
  name_list.sample
end

def activity(activity_list)
  activity_list.sample
end

def sentence(name, activity)
  puts "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))



if sun == visible
  puts "Bright"
end

unless sun == visible
  puts "Cloudy"
end

sun = ['visible', 'hidden'].sample

puts "bright" if sun == 'visible'
puts "blocked" unless sun == 'visible'

boolean = [true, false].sample

boolean ? puts("I'm true") : puts("I'm false")


stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "Go"
when "red"
  puts "stop"
when "yellow"
  puts "slow down"
end

status = ['awake', 'tired'].sample

my_status = if status == 'awake'
              "Be productive"
            else
              "Sleep"
            end
puts my_status



name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0



state = 'tExAs'
state.capitalize!
puts state


greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting


alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')


words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end


colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')


pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts my_pet



numbers = [1, 2, 3, 4, 5]
doubled_numbers = []

numbers.map do |num|
  doubled_numbers << num * 2
end
p doubled_numbers


numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |num| 
                                num % 3 == 0
                              end

p divisible_by_three


['Dave', 7, 'Miranda', 3, 'Jason', 11]


car = hash.new
car = {'type' => 'sedan', 'color' => 'blue', 'mileage' => 80,000} # strings as keys

or 

car = {
  type:   'sedan', # using symbols as keys
  color:  'blue',
  mileage: 80,0000
}

car.delete(:mileage)

puts car[:color]

numbers.each do |k, v|
  puts "A #{k} number is #{v}."
end


half_numbers = numbers.map do |k, v|
                  v / 2
                end

p half_numbers


vehicles = {
            car: {type: 'sedan'},
            truck: {type: 'offroad'}
}
















































