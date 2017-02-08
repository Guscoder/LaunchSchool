
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do  
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end

# The purpose of number % dividen == 0 is to make sure the array of divisors only has integers and not decimals

# the divisors near the end is to make it so the method returns the divisors array last
