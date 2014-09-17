def say(words)
  puts "==--> #{words}"
end

# Introduction

puts ". . . . . . . . Play . . . . . . . ."
puts "- - - Paper, Rock, or Scissors! - - -"
puts "------------------------------------"

# Player 1 input

loop do
  puts "Human, please choose your weapon: p) Paper, r) Rock, s) Scissors"
  player_1 = gets.chomp
  say "Human chose #{player_1}."
  puts "------------------------------------"

  # Computer input

  arr = ["p", "r", "s"]
  computer = arr.sample
  say "Computer chose #{computer}."
  puts "------------------------------------"

  # Who is the winner?

  if computer == player_1
    say "Tie!"
    say "Play again? y/n"
    answer = gets.chomp
    if answer == "y"
      next
    elsif answer == "n"
      break
    end
  elsif ((computer == "p") && (player_1 == "r")) || ((computer == "r") && (player_1 == "s")) || ((computer == "s") && (player_1 == "p"))
    say "Computer wins!"
    puts "------------------------------------"
    say "Play again? y/n"
    answer = gets.chomp
    if answer == "y"
      next
    elsif answer == "n"
      break
    end
  elsif ((computer == "r") && (player_1 == "p")) || ((computer == "s") && (player_1 == "r")) || ((computer == "p") && (player_1 == "s"))
    say "Human wins!"
    puts "------------------------------------"
    say "Play again? y/n"
    answer = gets.chomp
    if answer == "y"
      next
    elsif answer == "n"
      break
    end
    # Easter Egg
  elsif player_1 == "n"
    say "You picked NUCLEAR BOMB and started a nuclear war. Good one."
    puts "------------------------------------"
    break
  else
    say "Silly human, you didn't choose a designated weapon."
    puts "------------------------------------"
    next
  end
end
    
    






