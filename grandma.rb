puts "What do you want, darling?"
bye_counter = 3
grandma_responses = ["NO, NOT SINCE #{rand(1984..2005)}!",
                     "YOU'RE TOO YOUNG TO KNOW THAT",
                     "...back when I was #{rand(18..62)}..."]

loop do
  response = gets.chomp
  if response == "BYE"
    if bye_counter == 1
      puts "FINE, LEAVE ME!"
      break
    else
    puts "*looking aloof*"
      bye_counter -= 1
    end
  else
    response == response.upcase ? puts(grandma_responses.sample) : puts("HUH?! SPEAK UP, SONNY!")
    bye_counter = 3
  end
end