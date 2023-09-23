def leap_year_generator(first_year, last_year)
  (first_year..last_year).select do |year|
    if year % 4 == 0
      puts year unless year % 100 == 0 && year % 400 != 0
    end
  end
end

print "Provide me with a starting year: "
first_year = gets.chomp.to_i
print "Provide me with an ending year: "
last_year = gets.chomp.to_i

leap_year_generator(first_year, last_year)