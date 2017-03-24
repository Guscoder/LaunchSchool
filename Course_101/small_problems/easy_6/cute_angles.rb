DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# Further exploration
=begin
DEGREE = "\xC2\xB0"

def one_digit?(num)
  num.to_s.size == 1 ? num.to_s.prepend('0') : num 
end

def dms(num)
  positive = num >= 0
  sign = positive ? '' : '-'
  num = positive ? (num.to_f) : (num.to_f * - 1)
  deg = num.floor
  min = ((num - num.floor) * 60).floor
  sec = ((((num - num.floor) * 60) - min.floor) * 60).floor
  puts "%(#{sign}#{one_digit?(deg)}#{DEGREE}#{one_digit?(min)}'#{one_digit?(sec)}\")"
end

=end