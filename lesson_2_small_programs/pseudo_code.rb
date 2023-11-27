# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# a method that returns the sum of two integers

=begin
START

GET integer 1
GET integer 2
PRINT integer 1 + integer 2

END 

=end

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# a method that takes an array of strings, 
# and returns a string that is all those strings concatenated together

=begin

START

GET str_array
SET result = blank
SET index  = 0
SET last_index = the last index of str_array

WHILE index <= last_index
  result += atr_array[index]
  index += 1
  
PRINT result

END 

=end

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# a method that takes an array of integers, and 
# returns a new array with every other element from the original array, 
# starting with the first element. For instance:

=begin

START

GET int_array
SET new_arr = blank
SET index  = 0
SET last_index = the last index of int_array 

WHILE index <= last_index
  IF index is even
    new_arr << int_arr[index]
  index += 1

PRINT new_arr

END

=end

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# a method that determines the index of the 3rd occurrence of a given character in a string. 
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

=begin

START

GET str
GET char
SET index = 0
SET last_index = length of str - 1
SET 3rd_index = blank

WHILE index <= last_index
  IF str[index] == char
    count += 1
    IF count == 3
      3rd_index = index
      BREAK
  index += 1

PRINT 3rd_index

END

=end

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.

=begin

START

GET array_1
GET array_2

SET index = 0
SET last_index = last index of array_1 
SET new_arr = blank

WHILE index <= last_index
  new_arr << array_1[index]
  new_arr << array_2[index]
  index += 1

PRINT new_arr

END

=end