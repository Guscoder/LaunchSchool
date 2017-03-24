=begin

Req
  count number of occurrences of element in an array
  print each element alongside number of occurrences:  car => 5

Algorithm
  input array
  iterate though array to compare elements
  create structure that shows how many times each element is shown
  output structure    

=end



def count_occurrences(arr)
  vehicle_count = {}

  arr.each do |item|
    vehicle_count[item] = arr.count(item)
  end

  vehicle_count.each do |item, count|
    puts "#{item} => #{count}"
  end
  
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)