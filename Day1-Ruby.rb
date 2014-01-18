
puts "Paul"

puts "Hello, Ruby".index('Ruby')

10.times {puts 'Paul'}

digits = 0..10
digits.each { |value|
  puts "This sentance is number #{value}"
}


random = rand(10) + 1
puts "Guess the random number from 1 to 10:"

STDIN.each do |guess|
  break if guess.to_f == random
  if guess.to_f < random then puts 'Higher' else puts 'Lower' end
end

puts "You guessed #{random} correctly!!"
