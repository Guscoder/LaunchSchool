
def include?(arr, search_value)
  arr.detect { |item| return true if item == search_value}
  false
end





p include?([1,2,3,4,5], 3) 
p include?([1,2,3,4,5], 6) 
p include?([], 3) 
p include?([nil], nil) 
p include?([], nil) 