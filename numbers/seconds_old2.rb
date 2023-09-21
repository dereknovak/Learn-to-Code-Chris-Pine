def seconds_to_years(seconds)
  seconds / 60 / 60 / 24 / 365
end

print ">> How many seconds old do you think you are? > "
seconds = gets.chomp.to_i

puts "That would make you #{seconds_to_years(seconds)} years old."