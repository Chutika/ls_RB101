# Q1
# one liner with susequent 1 space indent to the right
# 10.times {|count| puts "The Flintstones Rock!".rjust("The Flintstones Rock!".size + count) }
# # 10.times {|number| puts (" " * number) + "The Flintstones Rock!" }

# Q2
# error because 40 + 2 is not string so cannot be concat with + in puts, so we need to convet it to st first
# puts "the value of 40 + 2 is " + (40+2).to_s 

# Q3
# def factors(number)
#   divisor = number
#   factors = []
#   # if divisor > 0
#   #   begin
#   #     factors << number / divisor if number % divisor == 0 
#   #     divisor -= 1
#   #   end until divisor == 0 
#   # else
#   #   puts "Cannot find factors. The number is less than or equal to 0."
#   # end
#   # factors
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end 
#   factors
# end

# p factors(3)
# p factors(0)
# p factors(-3)

# Q4
# diff, the first is destructive to the caller while the second is not. the first returns the same obj as the buffer arg but the second return a new obj

# Q5
# fix error

# limit = 15 # this variable is initialized outside method so it's not accessible by the method. need to define in the method or pass as argument
# def fib(first_num, second_num, limit=15)
#   limit_num = limit 
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 10)
# puts "result is #{result}"

# Q6
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)
# p answer - 8 # 34

# Q7
# munsters = {
#   "Herman" => {"age" => 32, "gender" => "male"},
#   "Lily" => {"age" => 30, "gender" => "female"},
#   "Grandpa" => {"age" => 402, "gender" => "male"},
#   "Eddie" => {"age" => 10, "gender" => "male"},
#   "Marilyn" => {"age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member['age'] += 42
#     family_member['gender'] = 'other'
#   end
# end

# # yes munsters get impacted
# puts "before calling method...\n#{munsters}\n\n" 
# mess_with_demographics(munsters)
# puts "after calling method...\n#{munsters}"

# Q8
# def rps(fist1, fist2)
#   if fist1 == 'rock'
#     (fist2 == 'paper') ? 'paper' : 'rock'
#   elsif fist1 == 'paper'
#     (fist2 == 'scissors') ? 'scissors' : 'paper'
#   else
#     (fist2 == 'rock') ? 'rock' : 'scissors'
#   end
# end

# puts rps( rps( rps('rock', 'paper'), rps('rock', 'scissors') ), 'rock' )
# # output paper

# Q9

def foo(param = 'no')
  'yes'
end

def bar(param = 'no')
  param == 'no' ? 'yes' : 'no'
end

p bar(foo) # output no