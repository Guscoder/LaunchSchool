
=begin

  ask user for length and width of room in meters
  display area of room in feet
  display area of room in meters

Alg
  input length and width
  multiply l x w
  output square meters of room
  change meters to feet and output
=end

def area(l, w)
  l * w
end

def convert(square_meters)
  square_meters * METERS_TO_FEET 
end

METERS_TO_FEET = 10.7639

puts "Enter length of room:"
length = gets.chomp.to_i

puts "Enter width of room:"
width = gets.chomp.to_i

total_meters = area(length, width)
total_feet = convert(total_meters)

puts "The area of the room is #{total_meters} square meters (#{total_feet} square feet)"
