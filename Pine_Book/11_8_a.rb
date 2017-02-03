Dir.chdir 'C:Documents and settings/Justin/Photos' #add real dir address

pic_names = Dir[C:] #add real dir name

puts "What would you like to call this batch of photos?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.' #this is the progress bar

  new_name = if pic_number < 10
    '#{batch_name}0#{pic_number}.jpg'
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  File.rename name, new_name
  pic_number = pic_number + 1

end
puts
puts 'Done, Cutie!'
