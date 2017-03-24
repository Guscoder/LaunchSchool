def triangle(int)
  space_counter = int - 1
  star_counter = 1
  loop do 
    puts "#{' ' * space_counter}#{'*' * star_counter}"
    space_counter -= 1
    star_counter += 1
    break if space_counter == 0
  end
end

triangle(9)


=begin
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

=end