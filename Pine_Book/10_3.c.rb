def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase}
  more = arr.select{|x| x.downcase >= middle.downcase}

  sort(less) + [middle] + sort(more)

end

puts (sort(['can', 'Feel', 'Singing', 'like', 'A', "can"]))