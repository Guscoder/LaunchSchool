iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  if answer = "yes"
    break
  end
end


say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1

  say_hello = false if count == 5
end

numbers = []

while numbers.length  < 5
  numbers.push rand(0..99)
end
  
print numbers


count = 1

until count == 11
  puts count
  count += 1
end


numbers = [7, 9, 13, 25, 18]
i = 0

until i == numbers.length
  puts numbers[i] 
    i += 1
end


for i in 1..100
  puts i if i % 2 != 0 
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends 
  puts "Hello, " + name + "!"
end


count = 1

loop do 
  if count % 2 == 0
    puts count.to_s + " is even."
  else
    puts count.to_s + " is odd."
  end

  count += 1
  if count > 5
    break
  end
end


loop do
  number = rand(100)
  puts number
  break if number > 0 && number < 10
end

loop do
  number = rand(100)
  puts number

  if number.between?(0, 10)
    break
  end
end




process_the_loop = [true, false].sample

loop do 
  if process_the_loop
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end
  break
end



loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer != 4
    puts "Wrong Answer. try again!"
  else
    puts "That's correct!"
  end
  break
end



numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  if numbers.length == 4
    break
    end

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


nnumber = 0

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

  next unless  number_a == 5 || number_b == 5
    puts '5 was reached!'
  break

end



def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -=1
end

puts "What is your age in years?"

age = gets

ageMonths = 12 * age.to_i

puts "You are #{ageMonths} months old."



puts "Do you want to print something? (y/n)"
response = gets.chomp

puts "something" if response == "y" 





output = nil

loop do 
  puts "How many output lines do you want? Enter a number >=3."
  output = gets.to_i
  break if output >= 3
  puts "That's not enough lines."
end

while output > 0 
  puts "Launch school is the best!"
  output -=1
end


loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  input = gets.chomp.to_i
  if input >= 3
    input.times { puts "Launch School is the best!" }
    break
  else
    puts ">> That's not enough lines."
  end
end


loop do 
  puts "Please enter your user name:"
  user_name = gets.chomp
  name1 = "Gustavius"

  puts "Please enter your password:"
  user_password = gets.chomp
  password = "moomoo"

  if user_name == name1 && user_password = password
    break
  else
    puts "Authorization failed!"
  end

end


puts "Welcome!"



def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil

loop do

  puts "Please enter a numerator."
  numerator = gets.chomp

  if valid_number?(numerator) == true
    break

   else
    puts "Invalid input. Only integers are allowed."
  end
end

denominator = nil
loop do
    puts "Please enter a denominator"
    denominator = gets.chomp
if valid_number?(denominator) == true && denominator != 0
    break
   else
    puts "Invalid input. Only integers are allowed, not including 0."
  end
end

total = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{total}" 



loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? ' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end




def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

input1 = nil
input2 = nil

loop do

  puts "Please enter a positive or negative number."
  input1 = gets.chomp

  puts "Please enter a positive or negative number."
  input2 = gets.chomp

  unless valid_number?(input1) && valid_number?(input2)
    puts "You didn't provide non-0 integers. Try again!"
    next
  end

  input1 = input1.to_i
  input2 = input2.to_i

  if (input1 > 0 && input2 > 0) || (input1 < 0 && input2 < 0) 
    puts "Sorry, one integer must be positive and one must be negative. Please start again."
  end

  total = input1 + input2

  if (input1 > 0 && input2 < 0) || (input1 < 0 && input2 > 0) 
    puts "#{input1} + #{input2} = #{total}"
    break
  end

end


def hello
  puts "Hello"
end

def world
  puts "world"
end

puts "#{hello}  #{world}" 



def greet
  puts "#{hello}" + " " + "#{world}" 

end

def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + ' ' + world
end

puts greet



def car(brand, model)
  puts "#{brand} #{model}"
end

car(Toyota, Corolla)


daylight = [true, false].sample

def time_of_day(bool)
  puts "It's daytime!" if bool == true
  puts "It's nighttime!" if bool = false
end

time_of_day(daylight)




def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."


def assign_name(name= 'Bob')
  name
end

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'


def add(a, b)
  a + b
end

def multiply(a,b)
  a * b
  end


puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36



names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']


def name(a)
  a.sample
end

def activity(b)
  b.sample
end

def sentence(person_name, action)
  puts "#{person_name} went #{action} today!"  
end

puts sentence(name(names), activity(activities))



def print_me
  "I'm printing within the method!"
end

puts print_me



sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is so bright"
end


sun = ['visible', 'hidden'].sample

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end


sun = ['visible', 'hidden'].sample

puts "The clouds are blocking the sun!" unless sun == 'visible'
puts "The sun is so bright!" if sun == 'visible'




boolean = [true, false].sample

boolean ? puts("I'm true") : puts("I'm false!")




stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' 
  puts "Go!"
when 'red'
  puts "Stop!"
when 'yellow'
  puts "Slow down!"
end



status = ['awake', 'tired'].sample

alert = if status == 'awake'
          'Be productive'
        else
          'Go to sleep!'
        end

puts alert



number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end



stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else puts 'Stop!'
end


my_string = String.new
my_string = ''


name = 'Roger'

p name.downcase == 'RoGer'.downcase
p name.downcase == 'Dave'.downcase


name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0


name = 'Elizabeth'

puts "Hello, #{name}!"



first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name

puts full_name


greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye!')#permanently modifies greeting replacing Hello with goodbye
puts greeting



alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')



words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts "#{word}" + "s"
end


colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')



pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts "I have a pet #{my_pet}."



pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2, 3]

puts "I have a pet #{my_pet[0]} and a pet #{my_pet[1]}."



pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop

puts "I have apet #{my_pets}."


pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"



colors = ['red', 'yellow', 'purple', 'green']

colors.each do |color|
  puts "I'm the color #{color}!"
end


numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map {|num| num*2}

puts doubled_numbers


numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select{|num| % 3 = 0}

p divisible_by_three



['Dave', 7, 'Miranda', 3, 'Jason', 11]

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

flat_favorites = favorites.flatten

p flat_favorites




array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2


car = {
       type: 'sedan',
       color: 'blue',
       mileage: 80,000 
}

car[:year] = 2003

car.delete(:mileage)

puts car[:color]


numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} number is #{value}."
end


half_numbers = numbers.map{|k,v| v / 2}

p half_numbers



















