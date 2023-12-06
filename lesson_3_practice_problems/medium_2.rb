# Q1
# a = 'forty two'
# b = 'forty two'
# c = a

# puts "a object id: #{a.object_id}"
# puts "b object id: #{b.object_id}" # diff from a
# puts "c object id: #{c.object_id}" # same as a

# Q2
# a = 42
# b = 42
# c = a

# puts "a object id: #{a.object_id}"
# puts "b object id: #{b.object_id}" 
# puts "c object id: #{c.object_id}" 
# # same obj id since number is immutable. there's only 1 integer 42 etc

# Q3
# def tricky_method(string_param_one, string_param_two)
#   string_param_one += "rutabaga"
#   string_param_two << "rutabaga"
# end

# string_arg_one = "pumpkins"
# string_arg_two = "pumpkins"

# tricky_method(string_arg_one, string_arg_two)

# puts "String_arg_one looks like this now: #{string_arg_one}" # pumpkins
# puts "String_arg_two looks like this now: #{string_arg_two}" # pumpkins rutabaga

# Q4
# def tricky_method(a_string_param, an_array_param)
#   a_string_param << "rutabaga" # << modifies existing obj
#   an_array_param = ['pumpkins', 'rutabaga'] # create new obj
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]

# tricky_method(my_string, my_array)

# puts "my_string looks like this now: #{my_string}" 
# puts "my_array looks like this now: #{my_array}"

# Q5
# def tricky_method(a_string_param, an_array_param)
#   # [ (a_string_param + "rutabaga") , (an_array_param + ["rutabaga"]) ]
#   a_string_param += "rutabaga"
#   an_array_param += ['rutabaga']
#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]

# # new_string = tricky_method(my_string, my_array)[0]
# # new_array = tricky_method(my_string, my_array)[1]
# new_string, new_array = tricky_method(my_string, my_array)

# puts "my_string looks like this now: #{my_string}" # pumpkins
# puts "new_string looks like this now: #{new_string}" # pumpkinsrutabaga
# puts "my_array looks like this now: #{my_array}" # ['pumpkins']
# puts "new_array looks like this now: #{new_array}" # ['pumpkins', 'rutabaga']

# Q6
def color_valid(color)
  if color == 'blue' || color == 'green'
    true
  else
    false
  end
end

# simplified

def simplified_color_valid(color)
  color == 'blue' || color == 'green' 
end