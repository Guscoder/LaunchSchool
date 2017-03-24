
=begin

Req
  take year as input
  return what century the year is
  return val beings with century number
  end s with st, nd, rd, or th

Prog
  define centuries
  match year to century
  add appropriate ending to century
  return century value
=end



def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


