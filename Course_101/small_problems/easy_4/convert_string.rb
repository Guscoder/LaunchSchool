def string_to_integer(string)
  arr = string.chars
  arr.each_with_index do |obj, index|
    case obj
      when "1" then arr[index] = 1
      when "2" then arr[index] = 2
      when "3" then arr[index] = 3
      when "4" then arr[index] = 4
      when "5" then arr[index] = 5
      when "6" then arr[index] = 6
      when "7" then arr[index] = 7
      when "8" then arr[index] = 8
      when "9" then arr[index] = 9
      else arr[index] = 0
    end
  end
  arr.inject{|x,y| x*10 +y}
end

=begin

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

=end