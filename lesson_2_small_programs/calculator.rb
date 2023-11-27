=begin

Calculator
- asks for two numbers
- asks for the type of operation to perform: add, subtract, multiply or divide
- displays the result

=end

# write along the course - - - - - - - - - - - - - - - - - - -  -

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  # when string message e.g. 'hi' got turn into integter using to_i, it will return 0
  # of course there's a loop hole in this logic since "0".to_i also returns 0
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

# Kernel.puts("=> Welcome to Calculator!")
prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop

  # Kernel.puts("=> What's the first number?")
  # need to initiate number1 out of the loop so that we can access it out of block loop later
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number. Please try again.")
    end
  end

  # Kernel.puts("=> What's the second number?")
  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number. Please try again.")
    end
  end

  # Kernel.puts("=> What operation would you like to perform? 1) add  2) subtract  3) multiply  4) divide")
  operation_prompt = <<-MSG
  What operation would you like to perform? 
  1) add  
  2) subtract  
  3) multiply  
  4) divide
  MSG
  prompt(operation_prompt)
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3 or 4")
    end
  end

  # if operator == '1'
  #   result = number1.to_i() + number2.to_i()
  # elsif operator == '2'
  #   result = number1.to_i() - number2.to_i()
  # elsif operator == '3'
  #   result = number1.to_i() * number2.to_i()
  # else
  #   result = number1.to_f() / number2.to_f()
  # end 

  prompt("#{operation_to_message(operator)} the two numbers ...")
  result =  case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt("Result: #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt "Thank you for using the Calculator. Good bye!"

=begin

# try write the calculator by myself

# input = 2 numbers 
Kernel.puts "Welcome to calculator!"

puts "Please enter the first number:"
x = Kernel.gets().chomp().to_i()

puts "Please enter the second number:"
y = gets.chomp.to_i

# get operation type
puts "Please choose which operation you want to perform :" 
puts "1 for add\n2 for subtract\n3 for multiply\n4 for divide"
operator = gets.chomp

# output = display calculated result
if operator == "1"
  puts "#{x} + #{y} = #{x+y}"
elsif operator == "2"
  puts "#{x} - #{y} = #{x-y}"
elsif operator == "3"
  puts "#{x} x #{y} = #{x*y}"
elsif operator == "4"
  puts "#{x} / #{y} = #{x/y/1.0}" if y != 0
  puts "Cannot perform division because #{y} is 0" if y == 0
else
  puts "You enter the wrong operation number."
end

# type along

if operator == "1"
  puts "#{x} + #{y} = #{x+y}"
elsif operator == "2"
  puts "#{x} - #{y} = #{x-y}"
elsif operator == "3"
  puts "#{x} x #{y} = #{x*y}"
elsif operator == "4"
  puts "#{x} / #{y} = #{x/y/1.0}" if y != 0
  puts "Cannot perform division because #{y} is 0" if y == 0
else
  puts "You enter the wrong operation number."
end

=end