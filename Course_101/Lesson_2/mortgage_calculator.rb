# create mortgage calculator



def is_float?(fl)
  fl =~ /(^(\d+)(\.)?(\d+)?)|(^(\d+)?(\.)(\d+))/
end

def mortgage_calc(loan_amount, monthly_rate, loan_duration_months)
  monthly_payment = loan_amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration_months.to_f)))
  monthly_payment
end

puts "Welcome to the Mortgage Calculator!"

loan_amount = ''
apr = ''
loan_duration_years = ''
loan_duration_months = ''
monthly_rate = ''

loop do
  loop do
    puts "Please enter your loan amount:"
    loan_amount = gets.chomp
    if is_float?(loan_amount) && loan_amount.to_f > 0 
      break
    else
      puts "Please enter a positive number."
    end
  end

  loop do
    puts "Please enter the APR:"
    apr = gets.chomp

    if is_float?(apr) && apr.to_f > 0
      monthly_rate = apr.to_f * 0.01 / 12
      break
    else
      puts "Please enter a positive number"
    end
  end

  loop do
    puts "Please enter the loan duration in years:"
    loan_duration_years = gets.chomp

    if is_float?(loan_duration_years) && loan_duration_years.to_i > 0 
      loan_duration_months = loan_duration_years.to_f * 12
      break
    else
      puts "Please enter a positive number."
    end
  end

  result = mortgage_calc(loan_amount, monthly_rate, loan_duration_months)

  puts "Your monthly payment will be $#{result.round(2)} for the next #{loan_duration_months.to_i} months."

  puts "Do you want to perform another calculation? (Y to calculate again)"
    answer = gets.chomp
    break unless answer.downcase().start_with?('y')
end



