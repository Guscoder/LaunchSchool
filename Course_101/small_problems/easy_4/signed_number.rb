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


def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

