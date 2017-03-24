=begin
input - single name string
output- string


Prog
  access arg string
  split string
  put string together lastname, comma, first name via interpolation
=end

=begin
def swap_name(full_name)
  puts "#{full_name.split.last}, #{full_name.split.first}"
end
=end

def swap_name(name)
  name.split(' ').reverse.join(', ')
end


swap_name('Joe Roberts')

