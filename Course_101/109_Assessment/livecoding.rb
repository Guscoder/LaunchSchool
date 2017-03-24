
def fizzbuzz(start, end_number)
  new_arr = []
  (start..end_number).each do |n|
    if n % 3 == 0 && n % 5 == 0 
      new_arr << "FizzBuzz"
    elsif n % 5 == 0 
      new_arr << "Buzz"
    elsif n % 3 == 0
      new_arr << "Fizz"
    else new_arr << n
    end 
  end
  p new_arr
end

fizzbuzz(1, 15)


=begin
def fizzbuzz(start, end_number)
  (start..end_number).each do |n|
    case n
    when n % 3 == 0 && n % 5 == 0 then puts "FizzBuzz"
    when n % 5 == 0 then puts "Buzz" 
    when n % 3 == 0 then puts "Fizz"
    else puts n
    end 
  end
end

fizzbuzz(1, 21)
=end