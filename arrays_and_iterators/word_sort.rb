words = Array.new

puts "Input a bunch of words, one at a time, and I'll sort them alphabetically:"

loop do
  word = gets.chomp
  break if word.empty?
  words << word
end

puts "Alphabetical Order".center(50)
puts
words.sort.each { |word| puts word.center(50) }
puts