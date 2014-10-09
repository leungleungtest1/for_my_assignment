CHOICE = {"p"=>"Paper","r"=>"Rock","s"=>"Scissors"}

def win_msg (arg)
case
when arg == "Paper"
  puts "Paper wraps Rock!"
when arg == "Rock"
  puts "Rock smashs Scissors"
when arg == "Scissors"
  puts "Scissors cuts Paper!"
end
end

def who_won(human, com)
if human == com
  puts "It's a tie."
elsif (human == "Paper" && com == "Rock") || ( human ==  "Rock" && com == "Scissors") || (human == "Scissors" && com == "Paper")
  win_msg(human)
  puts "You won!"
else
  win_msg(com)
  puts"Computer won!"
  end
  end     

loop do
begin puts "Play Paper Rock Scissors!"

puts "Choose one: (P/R/S)"
choice = gets.chomp.downcase
end until CHOICE.keys.include?(choice)

puts "you chose #{human = CHOICE[choice]} and computer chose #{com = CHOICE.values.sample}"

who_won(human,com)
     puts "Play again?(Y/N)"
p_reply = gets.chomp.downcase
break if p_reply !="y"
end

puts "Goodbye!"