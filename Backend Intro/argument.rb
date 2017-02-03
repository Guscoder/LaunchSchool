
def makecaps(greeting)
  if greeting.length > 10
    greeting.upcase
  else
    greeting
  end  
end

puts makecaps("hello friends")