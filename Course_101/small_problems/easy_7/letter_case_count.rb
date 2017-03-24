
def letter_case_count(str)
  string_counts = Hash.new(0)
  string_counts[:uppercase] = str.scan(/[A-Z]/).length
  string_counts[:lowercase] = str.scan(/[a-z]/).length
  string_counts[:neither] = str.scan(/[^A-Za-z]/).length
  string_counts
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

