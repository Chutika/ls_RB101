=begin
Mortgage / Car Loan Calculator

Input:
the loan amount
the Annual Percentage Rate (APR)
the loan duration

Output:
monthly interest rate
loan duration in months
monthly payment

Equation:
monthly payment = loan amount * (monthly interest rate / (1 - (1 + monthly interest rate)**(- loan duration (month) )))

m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

=end

# car loan calculator ---------------------------------------------------

# prompt
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_f != 0 
end

# loop to ask for input & display result
loop do 
  prompt "- - - - - - - - - - - - - - - - - - - - - - - - -"
  prompt "Welcome to mortgage / car loan calculator!"
  prompt "- - - - - - - - - - - - - - - - - - - - - - - - -"

  loan_amount = ''
  apr = ''
  loan_duration = ''

  loop do 
    prompt "Enter loan amount (USD): "
    loan_amount = gets.chomp.to_f

    if valid_number?(loan_amount)  
      break
    else
      prompt "That isn't valid number. Please try again"
    end
  end

  loop do 
    prompt "Enter annual percentage rate (0-1): "
    apr = gets.chomp.to_f 

    if valid_number?(apr) && apr <= 1
      apr = apr / 12
      break
    else
      prompt "Please enter the number between 0 - 1."
    end
  end

  loop do
    prompt "Enter loan duration (month): "
    loan_duration = gets.chomp.to_i
    
    if valid_number?(loan_duration)
      break
    else
      prompt "That isn't valid number. Please try again"
    end
  end

  monthly_payment = (loan_amount * (apr / (1 - (1 + apr)**(- loan_duration) ))).round(2)

  prompt "- - - - - - - - - - - - - - - - - - - - - - - - -"
  prompt "Your monthly payment is #{monthly_payment}"
  prompt "- - - - - - - - - - - - - - - - - - - - - - - - -"

  prompt "\nDo you want to calculate mortgage / car loan again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  puts ''
  
end

prompt "\nThank you for using mortgage / car loan calculator! Good bye!!"

