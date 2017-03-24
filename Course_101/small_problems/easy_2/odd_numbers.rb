
odd_arr = []

(1..99).select do |num|
  odd_arr << num if num.odd?
end

puts odd_arr
