# Q1 - - - - - - - - - - - - -  - - - - - - - - - - - -

# puts "Teddy is #{ (20..200).to_a.sample } years old!"

# Q2 - - - - - - - - - - - - -  - - - - - - - - - - - -
# input length and width in meter
# output return room area in meter2 n feet2

# SQRT_METER_TO_SQRT_FEET = 10.7639

# def calculate_room_area(length, width)
#   return (length*width).round(2), (length*width*SQRT_METER_TO_SQRT_FEET).round(2)
# end

# puts "Enter the length of the room in meters: "
# input_length = gets.chomp.to_f

# puts "Enter the width of the room in meters: "
# input_width = gets.chomp.to_f

# room_area_meter, room_area_feet = calculate_room_area(input_length, input_width)
# puts "The area of the room is #{room_area_meter} square meters (#{room_area_feet} square feet)"

# Q3 - - - - - - - - - - - - -  - - - - - - - - - - - -

# # input bill amount & tip rate
# puts "What is th bill? "
# bill = gets.chomp.to_f

# puts "What is the tip percentage (1-100)? "
# tip_rate = gets.chomp.to_f / 100

# # output tip amount and total bill amount
# tip_amount = (bill*tip_rate).round(2)
# total_amount = (bill + tip_amount).round(2)

# puts "The tip is $#{ tip_amount }"
# puts "The total is $#{ total_amount }"

# Q4 - - - - - - - - - - - - -  - - - - - - - - - - - -
# puts "What is your age? "
# current_age = gets.chomp.to_i

# puts "At what age would you like to retire? "
# retire_age = gets.chomp.to_i

# puts "It's 2023. You will retire in #{2023 + (retire_age - current_age) }."
# puts "You only have only #{retire_age - current_age} of work to go!"

# Q5 - - - - - - - - - - - - -  - - - - - - - - - - - -

# puts "What is your name? "
# name = gets.chomp

# if name.include?("!")
#   name = name.delete("!")
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name.capitalize}"
# end
 
# Q6 - - - - - - - - - - - - -  - - - - - - - - - - - -

odd_numbers = (1..99).to_a.select{|num| num.odd?}
puts "Odd numbers from 1 to 99 are..."
puts odd_numbers