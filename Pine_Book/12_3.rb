bdayTime = Time.local(1974, 11, 30, 23, 24)

puts bdayTime

currTime = Time.new

puts currTime - bdayTime



#Birthday Questions

puts "What year were you born in?"
bdayYear = gets.chomp

puts "What month were you born in?"
bdayMonth = gets.chomp

puts "What day were you born on?"
bdayDay = gets.chomp

theBday = Time.local(bdayYear, bdayMonth, bdayDay)

currTime = Time.new

age = (((((currTime - theBday)/ 60)/60)/24)/365)

puts "You are #{age} years old"

puts age.times {puts "Spank!"}