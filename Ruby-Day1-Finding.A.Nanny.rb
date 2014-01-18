# Seven languages in seven weeks
# Ruby Day 1

# Print the string “Hello, world.
puts "Hello, World."

# For the string “Hello, Ruby,” find the index of the word “Ruby.
puts "Hello, Ruby,".index('Ruby')

# Print your name ten times.
10.times {puts 'Paul'}

# Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10.
digits = 0..10
digits.each { |value|
  puts "This sentance is number #{value}"
}

# Run a Ruby program from a file. (Hence this file)


# Bonus: 
# A program that picks a random number. 
# Let a player guess the number, 
# telling the player whether the guess is too low or too high.
random = rand(10) + 1
puts "Guess the random number from 1 to 10:"

STDIN.each do |guess|
  break if guess.to_f == random
  if guess.to_f < random then puts 'Higher' else puts 'Lower' end
end

puts "You guessed #{random} correctly!!"
