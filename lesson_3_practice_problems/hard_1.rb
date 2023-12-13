# Q1 - - - - - - - - - - - - - - - - - - - - - - - -
# if false
#   greeting = 'hello world'
# end

# greeting # expected error about variable not initialize
# actual output : when you initialize a local variable within an if clause, even if that if clause doesn’t get executed, the local variable is initialized to nil.

# Q2 - - - - - - - - - - - - - - - - - - - - - - - -
# greetings = {a: 'hi'}
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting # hi there
# puts greetings # {:a => hi there}

# Q3 - - - - - - - - - - - - - - - - - - - - - - - -
# what will be printed by each of these groups

#A
# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = 'one'
# two = 'two'
# three = 'three'

# mess_with_vars(one, two, three)

# puts "one is #{one}" # one
# puts "two is #{two}" # two
# puts "three is #{three}" # three

##B
# def mess_with_vars(one, two, three)
#   one = 'two'
#   two = 'three'
#   three = 'one'
# end

# one = 'one'
# two = 'two'
# three = 'three'

# mess_with_vars(one, two, three)

# puts "one is #{one}" # one
# puts "two is #{two}" # two
# puts "three is #{three}" # three

##C
# def mess_with_vars(one, two, three)
#   one.gsub!('one', 'two')
#   two.gsub!('two', 'three')
#   three.gsub!('three', 'one')
# end

# one = 'one'
# two = 'two'
# three = 'three'

# mess_with_vars(one, two, three)

# puts "one is #{one}" # two
# puts "two is #{two}" # three
# puts "three is #{three}" # one

# Q4  - - - - - - - - - - - - - - - - - - - - - - - -

# original code
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

# try
def is_an_ip_number?(num_str)
  num_str.to_i >= 0 && num_str.to_i <= 255
end

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   result = true

#   # check if there are 4 components
#   if dot_separated_words.size == 4

#     # check each component
#     dot_separated_words.each do |word|
#       if is_an_ip_number?(word) == false
#         result = false
#         break
#       end
#     end
    
#   else
#     result = false
#   end
#   result
# end

# solution
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end


p dot_separated_ip_address?("11.22.33.44")
p dot_separated_ip_address?("0.22.344.0")
p dot_separated_ip_address?("3.4.5")
p dot_separated_ip_address?("4.12.32.44.56")