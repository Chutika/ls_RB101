# Q1
# numbers = [1,2,2,3]
# numbers.uniq
# puts numbers

# Q3
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important', 'urgent')
# puts advice

# Q4
# numbers = [1,2,3,4,5]
# numbers.delete_at(1) # delete value at index 1 and return it
# numbers.delete(1) # delete value 1 in numbers and return it

# Q5
# determine whether 42 lies between 10 and 100
# p (10..100).cover?(42) # true

# Q6
# show 2 different ways to put "Four score and " in font of it
# famous_words = "seven years ago..."
# # famous_words = "Four score and " + famous_words
# famous_words.insert(0, "Four score and ")
# # famous_words.prepend("Four score and ")
# # "Four score and " << famous_words
# puts famous_words

# Q7
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# p flintstones
# p flintstones.flatten!

# Q8
flintstones = {"Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5}
barney = flintstones.assoc("Barney")
p barney