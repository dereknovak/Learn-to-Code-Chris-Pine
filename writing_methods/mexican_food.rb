def ask(question)
  good_answer = false
  while (!good_answer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      good_answer = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer
end

puts "Hello, and thank you for taking the times to"
puts "help me with this experiment. My exerpiment"
puts "has to do with the way people feel about"
puts "Mexican food. Just think about Mexican food"
puts "and try to answer every question honestly,"
puts "with either a 'yes' or a 'no'. My experiment"
puts "has nothing to do with bed-wetting."
puts

ask("Do you like eating tacos?")
ask("Do you like eating burritos?")
wets_bed = ask("Do you wet the bed?")
ask("Do you like eating chimichangas?")
ask("Do you like eating sopapillas?")
ask("Do you like eating tamales?")
puts "Just a few more questions..."
ask("Do you like drinking horchata?")
ask("Do you like eating flautas?")

puts
puts "DEBRIEFING"
puts "Thank you for taking the time to help with"
puts "this experiement. In fact, this experiment"
puts "has nothing to do with Mexican food. It is"
puts "an experiment about bed-wetting. The Mexican"
puts "food was just there to catch you off guard"
puts "in the hopes that you would answer more"
puts "honestly. Thanks again."
puts
puts wets_bed