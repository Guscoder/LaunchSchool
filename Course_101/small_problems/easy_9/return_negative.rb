=begin
input--number
output--neg num or teh same number

Prog
  access argument-the number
  is num > = or < than 0
  if more than 0, return neg number
  if less than or equal to 0, return same num


=end

def negative(int)
  int > 0 ? -int : int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  