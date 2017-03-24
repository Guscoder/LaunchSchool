=begin

Req
  wrote method with two args
  1 arg is a pos integer
  1 arg is a boolean
  calculate bonus for given salary
  if boolean is true, bonus is half the salary
    if false, bonus is 0

Alg
  determine if true/false
  if true, divide salary by 2
  if false, return 0


=end


def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
