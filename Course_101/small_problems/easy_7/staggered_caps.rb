
def staggered_case(str)
  new_str = ''
  counter = 0
  loop do 
    if counter.even? 
      new_str << str[counter].upcase
    elsif counter.odd?
      new_str << str[counter].downcase
    end
    counter += 1    
    break if counter == str.length
  end
  p new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
