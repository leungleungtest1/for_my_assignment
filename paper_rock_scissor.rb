puts "Play Paper Rock Scissors!"

puts "Choose one: (P/R/S)"
choice = gets.chomp
choice = choice.downcase


a = ["p","r",'s']

until a.include?(choice) 
  puts "Please, choose one :(P/R/S)"
choice = gets.chomp
choice = choice.downcase
end

def choice_made(arg)
if arg == 'p'
  'Paper'
elsif arg == 'r'
  'Rock'
elsif arg == 's'
  'Scissors'
end    
end



puts "you chose #{human = choice_made(choice)} and computer chose #{com =choice_made(a.sample)}"

def who_won(human, com)
if human == com
  puts "It's a tie."
elsif human == "Paper" && com == "Rock"
  puts "Paper wraps Rock!"
  puts "You won!"
elsif human =="Paper" && com =="Scissors"
  puts "Scissors cuts Paper"
  puts "Computer won!"
elsif human == "Rock" && com == "Paper"
  puts "Paper wraps Rock!"
  puts "Computer won!"
elsif human ==  "Rock" && com == "Scissors"
  puts "Rock hits Scissors"
  puts "You won!"
elsif human == "Scissors" && com == "Paper"
  puts "Scissors cuts Paper!"
  puts "You won!"
  elsif human == "Scissors" && com == "Rock"
  puts "Rock hits Scissors"
  puts "Computer won!"
  end
  end     

who_won(human,com)
    
    puts "Play again?(Y/N)"
p_reply = gets.chomp
p_reply = p_reply.downcase

while p_reply == "y"

puts "Play Paper Rock Scissors!"

puts "Choose one: (P/R/S)"
choice = gets.chomp
choice = choice.downcase

a = ["p","r",'s']
until a.include?(choice) 
  puts "Please, choose one :(P/R/S)"
choice = gets.chomp
choice = choice.downcase
end
def choice_made(arg)
if arg == 'p'
  'Paper'
elsif arg == 'r'
  'Rock'
elsif arg == 's'
  'Scissors'
end    
end

puts "you chose #{human = choice_made(choice)} and computer chose #{com =choice_made(a.sample)}"

who_won(human,com)
    
    puts "Play again?(Y/N)"
p_reply = gets.chomp
p_reply = p_reply.downcase
  end