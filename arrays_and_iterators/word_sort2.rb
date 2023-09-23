words = Array.new

puts "Input a bunch of words, one at a time, and I'll sort them alphabetically:"

loop do
  word = gets.chomp
  break if word.empty?
  words << word
end

def sort_without_sort(arr)
  n = arr.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

sorted_array = sort_without_sort(words)
puts sorted_array