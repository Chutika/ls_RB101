# Q1
# 2 ways to find if there's "Spot"
# ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}
# p ages.has_key?("Spot")
# p ages.member?("Spot")
# p ages.include?('Spot')
# p ages.key?("Spot")

# Q2
# convert string to the following
# munster_description = "The Munsters are creepy in a good way"
# puts munster_description.swapcase
# puts munster_description.capitalize
# puts munster_description.downcase 
# puts munster_description.upcase

# Q3
# add hash
# ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}
# additional_ages = {"Marilyn" => 22, "Spot" => 237}
# # ages.update(additional_ages)
# ages.merge!(additional_ages)
# p ages

# Q4
# finding "dino" in advice string
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.match?("dino")

# Q5
# another way to write array
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Q6
# add value into array
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# p flintstones

# Q7
# add multiple values into array
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.concat(["Dino", "Hoppy"])
# # flintstones.push("Dino").push("Hoppy")
# p flintstones

# Q8
# shorten the sentence
# advice = "Few things in life are as important as house training your pet dinosaur."
# # puts advice.slice!( 0..(advice.index("house")-1) )
# puts advice.slice!(0, advice.index('house'))
# puts advice

# Q9
# one-liner to count the number of lower case
# statement = "The Flintstones Rock!"
# p statement.count("t")

# Q10
# center title above 40 char width table
title = "Flintstone Family Members"
title.center(40)
