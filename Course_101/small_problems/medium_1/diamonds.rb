def diamond(num)
  space_counter = num / 2
  star_counter = 1
  loop do 
    puts "#{' ' * space_counter}#{'*' * star_counter}"
    space_counter -= 1
    star_counter += 2
    break if space_counter == 0
  end  
  space_counter = 0
  star_counter = num
  loop do 
    puts "#{' ' * space_counter}#{'*' * star_counter}"
    space_counter += 1
    star_counter -= 2
    break if star_counter < 0
  end  

end


diamond(9)


=begin

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

=end