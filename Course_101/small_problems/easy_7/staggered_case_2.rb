def staggered_case(str)
  puts "Do you want to include non-AN chars?"
  answer = gets.chomp.downcase
  arr = str.chars
  p arr
  counter = 0
  if answer == 'n'
    arr.each do |char|
      if char =~ /[^A-Za-z]/
        char
      elsif counter == 1
        char.downcase!
        counter = 0
      else
        char.upcase!
        counter = 1
      end
    end
  elsif answer == 'y'
     arr.each do |char|
      if counter.odd?
        char.downcase!
        counter += 1
      else
        char.upcase!
        counter =+ 1
      end
    end
  end
  p arr.join
end

p staggered_case('I Love Launch School!') 


=begin

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

=end