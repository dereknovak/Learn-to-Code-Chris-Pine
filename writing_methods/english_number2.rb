def english_number(number)
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return 'zero'
  end

  number_string = String.new

  ones_place = ['one',     'two',       'three',    'four',     'five',
                'six',     'seven',     'eight',    'nine']

  tens_place = ['ten',     'twenty',    'thirty',   'fourty',   'fifty',
                'sixty',   'seventy',   'eighty',   'ninety']

  teens =      ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number

  write = left / 1000000000000
  left = left - write * 1000000000000

  if write > 0
    trillions = english_number(write)
    number_string += trillions + ' trillion'

    if left > 0
      number_string += ' '
    end
  end

  write = left / 1000000000
  left = left - write * 1000000000

  if write > 0
    billions = english_number(write)
    number_string += billions + ' billion'

    if left > 0
      number_string += ' '
    end
  end

  write = left / 1000000
  left = left - write * 1000000

  if write > 0
    millions = english_number(write)
    number_string += millions + ' million'

    if left > 0
      number_string += ' '
    end
  end

  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = english_number(write)
    number_string += thousands + ' thousand'

    if left > 0
      number_string += ' '
    end
  end

  write = left / 100
  left = left - write * 100
  
  if write > 0
    hundreds = english_number(write)
    number_string += hundreds + ' hundred'
    
    if left > 0
      number_string += ' '
    end
  end

  write = left / 10
  left -= write * 10

  if write > 0
    if ((write == 1) && (left > 0))
      number_string += teens[left - 1]
      left = 0
    else
      number_string += tens_place[write - 1]
    end

    if left > 0
      number_string += '-'
    end
  end  

  write = left
  left = 0

  if write > 0
    number_string += ones_place[write - 1]
  end

  number_string
end

print ">> Give me an integer above 0: "
input = gets.chomp.to_i

puts english_number(input)