
=begin


bank of switches
1 to n
all lights are turned on
toggle 2,4,6
toggle 3,6,9 
etc...up to n times

toggle the switch each time
track if it is on or off

output--which switches are on at the end

Prog
  array of "on" based on n argument
  iterate over array increasing each time
  toggle each index to on or off

=end

def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select { |key| lights[key] == "on"  }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle_on_or_off(lights)
p on_lights(lights)


=begin
def toggle(number)
  switches = []
  number.times do |x|
    switches << "on"
  end

  (1..number).each do |n|
    counter = n
  
    loop do 
      if switches[counter] == "on"
        switches[counter] = "off"
      elsif switches[counter] == 'off'
        switches[counter] = 'on'        
      end
      counter += (n + n)
      break if counter > (number * 2)
      p switches
    end
  end
  
  switches.map! do |x|
    if (x[counter] == "on")
      "off"
    elsif x[counter] == "off"
      x[counter] = "on"
    end
  end
=

  p switches
end

=end

toggle(10)