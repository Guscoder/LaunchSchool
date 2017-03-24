
def xor?(a, b)
  return true if a && !b 
  return true if b && !a 
  false
end


p xor?(5.even?, 4.even?) 
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 