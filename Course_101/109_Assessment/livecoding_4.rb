
def is_prime?(number)
    (2..(num-1)).each do |denom|
      return false if num % denom == 0
    end
  true
end



def find_primes(start_num, end_num)
  (start_num..end_num).select do |num|
    is_prime?(num)
  end 
end
