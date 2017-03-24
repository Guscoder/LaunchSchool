=begin

input--1 array(name) 1 hash(title/occupation)

output--return a greeting using name & title/occupation

Prog
  access arr with name
  make name a string
  put name into greeting output
  access hash with title
  put title into greeting output
=end

def greetings(person_name, job_info)
  name_string = person_name.join(' ')
  job_string = job_info[:title] + ' ' + job_info[:occupation]
  puts "==> Hello, #{name_string}! Nice to have a #{job_string} around." 
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })