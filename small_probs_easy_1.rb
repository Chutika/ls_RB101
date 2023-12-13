# Q1 - - - - - - - - - - - - - - - - - - - - - - - - -

# def repeat(msg, loop_number)
#   if loop_number >= 0
#     loop_number.times{puts msg}
#   else
#     puts "Invalid loop number. Please enter positive number"
#   end
# end

# repeat('Hello', 3)

# Q2 - - - - - - - - - - - - - - - - - - - - - - - - -

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

# Q3  - - - - - - - - - - - - - - - - - - - - - - - - -
# method that takes 1 arg, positive int and return a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# def stringy(length, start_with = 1)
#   stringy_str = ''
#   number = ''
#   length.times do |counter|
#     if start_with == 1
#       number = counter.even? ? '1' : '0'
#     else
#       number = counter.even? ? '0' : '1'
#     end
#     stringy_str += number
#   end
#   # length.times do |counter|
#   #   if counter.even?
#   #     stringy_str += '1'
#   #   else
#   #     stringy_str += '0'
#   #   end
#   # end
#   stringy_str
# end

# puts stringy(6) # 101010
# puts stringy(6, 0) # 010101
# puts stringy(9) # 101010101
# puts stringy(4) # 1010
# puts stringy(7) # 1010101

# Q4 - - - - - - - - - - - - - - - - - - - - - - - - -

# 2 input positive integer & boolean 
# 1 output bonus, true bonus half of salary

# def calculate_bonus(salary, get_bonus)
#   get_bonus ? salary/2 : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# Q5  - - - - - - - - - - - - - - - - - - - - - - - - -

# print short line of text in a box

# def print_in_box(text)
#   puts "+-" + "-" * text.length + "-+"
#   puts "| " + " " * text.length + " |"
#   puts "| " + text + " |"
#   puts "| " + " " * text.length + " |"
#   puts "+-" + "-" * text.length + "-+"
# end

# print_in_box("To boldly go where no one has gone before.")
# print_in_box(" ")

# Q6 - - - - - - - - - - - - - - - - - - - - - - - - -

# def triangle(number)
#   number.times do |num|
#     puts ("*" * (num + 1)).rjust(number)
#   end
# end

# triangle(5)
# triangle(9)

# Q7 - - - - - - - - - - - - - - - - - - - - - - - - -

# def madlib(noun, verb, adj, adv)
#   "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!"
# end

# puts "Enter a noun: "
# input_noun = gets.chomp

# puts "Enter a verb: "
# input_verb = gets.chomp

# puts 'Enter an adjective: '
# input_adj = gets.chomp

# puts 'Enter an adverb: '
# input_adv = gets.chomp

# puts madlib(input_noun, input_verb, input_adj, input_adv)

# Q8 - - - - - - - - - - - - - - - - - - - - - - - - -
# reverse digit in number

# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

# Q9 - - - - - - - - - - - - - - - - - - - - - - - - -

def center_of(str)
  center_index = str.size / 2
  str.size.even? (str[center_index - 1] + str[center_index]) : str[center_index]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') =='x'