def multisum(int)
  arr = (1..int).select {|num| num % 3 == 0 || num % 5 == 0}
  arr.reduce(:+)
end

multisum(3) 
multisum(5) 
multisum(10) 
multisum(1000) 