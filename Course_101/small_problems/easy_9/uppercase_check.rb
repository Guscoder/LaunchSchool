=begin
input-string
output--boolean

Prog
  check string to see if all letters are upcase
  if all upcase return true
  otehrwise return false
  nonalphabetic chars should be ignored

=end

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true