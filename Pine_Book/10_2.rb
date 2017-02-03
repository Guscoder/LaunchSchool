def dictionary_sort arr
  rec_dict_sort arr, []
end

def rec_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
end

sorted.push smallest

rec_dict_sort still_unsorted, sorted
end

puts (dictionary_sort(['can', 'feel', 'singing', 'like', 'A', "can"]))


#alternative program

def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)

end

puts (sort(['can', 'feel', 'singing', 'like', 'A', "can"]))

