
def get_grade(grade1, grade2, grade3)
  grade_avg = (grade1 + grade2 + grade3) / 3
  case grade_avg
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  when 0..59 then 'F'
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(50, 50, 55) 
p get_grade(50, 50, 55) 