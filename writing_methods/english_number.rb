def english_number(number)
  if number < 0 || number > 100
    return "Please enter a number between 0 - 100"
  end
  number_string = String.new
  left = number
  write = left / 100
  left = left - write * 100

  if write > 0
    return "one-hundred"
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    case write
      when 1
        case left
          when 0 then number_string += 'ten'
          when 1 then number_string += 'eleven'
          when 2 then number_string += 'twelve'
          when 3 then number_string += 'thirteen'
          when 4 then number_string += 'fourteen'
          when 5 then number_string += 'fifteen'
          when 6 then number_string += 'sixteen'
          when 7 then number_string += 'seventeen'
          when 8 then number_string += 'eighteen'
          when 9 then number_string += 'nineteen'
        end

        left = 0
      when 2 then number_string += 'twenty'
      when 3 then number_string += 'thirty'
      when 4 then number_string += 'fourty'
      when 5 then number_string += 'fifty'
      when 6 then number_string += 'sixty'
      when 7 then number_string += 'seventy'
      when 8 then number_string += 'eighty'
      when 9 then number_string += 'ninety'
    end

    if left > 0
       number_string += '-'
    end
  end

  write = left
  left = 0

  if write > 0
    case write
      when 1 then number_string += 'one'
      when 2 then number_string += 'two'
      when 3 then number_string += 'three'
      when 4 then number_string += 'four'
      when 5 then number_string += 'five'
      when 6 then number_string += 'six'
      when 7 then number_string += 'seven'
      when 8 then number_string += 'eight'
      when 9 then number_string += 'nine'
    end
  end

  if number_string.empty?
    return 'zero'
  end

  number_string
end

print ">> Give me an integer between 0 - 100: "
input = gets.chomp.to_i

puts english_number(input)