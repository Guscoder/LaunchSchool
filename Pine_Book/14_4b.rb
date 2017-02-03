def grandClock &block
  hour = Time.new.hour 

  if  hour >= 13
    hour = hour - 12
  end

  if hour == 0 
    hour = 12
  end
  
  hour.times do 
    block.call
  end
end

grandClock do
  puts "DONG!"
end
