#Loops and iterators

#Exercises

#1
#The each method returns 1,2,3,4,5

#2

x = ""
while x != "STOP" do 
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

#3

animals = ["elephant", "bear", "lion", "tiger"]

animals.each_with_index do |animal, index|
  puts "#{index+1}. #{animal}"
end

#4

def countdown(start)
  if start <= 0
    puts start
  else
    puts start
    countdown(start-1)
  end
end

countdown(10)