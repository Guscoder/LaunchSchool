
def box_lines(str)
  p (str.length + 2).times { |n| print "-"}
end

def print_in_box(str)
  top_line = "+#{'-' * (str.size + 2)}+"
  empty_line = "|#{' ' * (str.size + 2)}|"

  puts top_line
  puts empty_line
  puts "| " + str + " |"
  puts empty_line
  puts top_line

end


print_in_box('To boldly go where no one has gone before.')