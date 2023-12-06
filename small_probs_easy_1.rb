# Q1

# def repeat(msg, loop_number)
#   if loop_number >= 0
#     loop_number.times{puts msg}
#   else
#     puts "Invalid loop number. Please enter positive number"
#   end
# end

# repeat('Hello', 3)

# Q2

# def is_odd?(number)
#   # number.odd?
#   # (number % 2).abs == 1 # odd numbers divided by 2 will have remainder as 1
#   (number.remainder(2)).abs == 1
# end

# puts is_odd?(2) # false
# puts is_odd?(5) # true
# puts is_odd?(-17) # true
# puts is_odd?(-8) # false
# puts is_odd?(0) # false
# puts is_odd?(7) # true
