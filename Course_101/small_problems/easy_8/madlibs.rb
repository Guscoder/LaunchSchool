
def prompt(str)
  puts "==> #{str}"
end



  prompt("Enter a noun:")
  noun = gets.chomp

  prompt("ENter a verb:")
  verb = gets.chomp

  prompt("Enter an adjective:")
  adj = gets.chomp

  prompt("Enter an adverb:")
  adverb = gets.chomp

  prompt("Do you #{verb} your #{adj} #{noun} #{adverb}? Hilarious!")


