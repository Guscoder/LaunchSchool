puts "Provide a starting year."

startingYear = gets.chomp

puts "Provide an ending year."

endingYear = gets.chomp

for year in startingYear.to_i..endingYear.to_i   
  if year % 4 == 0
    puts year unless year % 100 == 0
  end
end