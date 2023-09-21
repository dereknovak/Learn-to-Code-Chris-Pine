def seconds_per_year(years)
  years * 365 * 24 * 60 * 60
end

print ">> How many years old are you? > "
years = gets.chomp.to_i

puts "If you're #{years}, that means you're #{seconds_per_year(years)} seconds old. Yikes!"