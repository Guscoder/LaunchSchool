
=begin
req
  get bill amount
  get tip rate
  compute the tip
  display tip amount and bill total


=end

puts "What is the bill amount?"
bill = gets.chomp.to_f

puts "What tip percentage would you like to leave?"
tip_perc = gets.chomp.to_f * (".01".to_f)

tip = bill * tip_perc

total_bill = bill + tip

puts "The tip is $#{sprintf('%.2f', tip)}."
puts "The total is $#{sprintf('%.2f', total_bill)}."

