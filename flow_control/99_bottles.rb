bottles = 99

loop do
  if bottles > 1
    puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer. Take one down, pass it around. #{bottles -= 1} bottles of beer on the wall"
  elsif bottles == 1 
    puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer. Take one down, pass it around, no more bottles of beer on the wall."
    bottles -= 1
  else 
    puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store, buy some more. 99 bottles of beer on the wall."
    puts "Go again? (y/n)"
    response = gets.chomp
    if response.downcase == 'n'
      puts "See you next time!"
      break
    end
    bottles = 99
  end
  puts ''
end