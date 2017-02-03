#More Stuff Exercises

#1
def has_lab?(string)
  if string =~ /lab/i
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

#3

# exception handling is how the program deals with errors. It solves the problem of an error breaking the entire programs and stopping it from completing. 

#4 

def execute(&block)
  block.call
end

execute {puts "Hello from inside the execute method!"}

#5 

#Because the parameter is missing the & to signify a block being passed into it. 
