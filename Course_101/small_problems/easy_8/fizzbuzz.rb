def fizzbuzz(start_num, end_num)
  result = []
  (start_num..end_num).each do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      result << "FizzBuzz"
    elsif n % 3 == 0 
      result << "Fizz"
    elsif n % 5 == 0 
      result << "Buzz"
    else
      result << n
    end
  end
  puts result.join(', ')
end

fizzbuzz(1,15)