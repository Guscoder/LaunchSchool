
number_of_lines = nil
quit_string = nil

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit)'

    quit_string = gets.chomp.downcase
    break if quit_string == 'q'

    number_of_lines = quit_string.to_i
    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end

  break if quit_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end