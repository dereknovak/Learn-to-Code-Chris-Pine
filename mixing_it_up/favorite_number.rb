def better_number(number)
  number + 1
end

print ">> What is your favorite number: "
number = gets.chomp.to_i

puts "Yeah, but #{better_number(number)} is a BIGGER and BETTER favorite number!"