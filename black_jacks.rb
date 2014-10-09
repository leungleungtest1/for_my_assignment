# Ask player name
# gives player cards
# gives dueler cards
# show dueler have
# hit or stay
# loop hit or stay or bust
# player busted
# player value 21 win
# stay salved value
# dueler turn
#  hit or stay
# until value = 21 or dueler value > player value or busted
# new game  


player_name = nil
player_choice = nil
play_or_exit = nil

$cards = {"spade"=>[1,2,3,4,5,6,7,8,9,10,11,12,13],"heart"=>[1,2,3,4,5,6,7,8,9,10,11,12,13],"diamond"=>[1,2,3,4,5,6,7,8,9,10,11,12,13], "club"=>[1,2,3,4,5,6,7,8,9,10,11,12,13]}
cards_of_player = {"spade"=>[],"heart"=>[],"diamond"=>[],"club"=>[]}
cards_of_dueler = {"spade"=>[],"heart"=>[],"diamond"=>[],"club"=>[]}

distrution_suit = nil
distrution_number = nil
real_cards_player = []
real_cards_dueler = []

def draw_card(cards_of_someone, real_cards_someone)
distrution_suit =  $cards.keys.sample                          # draw the suit of card
distrution_number = $cards[distrution_suit].sample             # draw the relevant number
$cards[distrution_suit].delete (distrution_number)             # delete the card available for draw
cards_of_someone[distrution_suit].push(distrution_number)      # pass the card draw to player or dueler
real_cards_someone.push(distrution_suit+distrution_number.to_s) # makes a element have both suit and number

cards_of_someone.each do |k,a|                                  # make player and programmer easy to see the cards in hand
                  a.sort!
                  end

 real_cards_someone.sort!                                       # make player and programmer easy to see the cards(in term of suit + number) in hand
end

def check_result (cards_of_someone)                             #check result of the game at anytime
  sum = 0
  cards_of_someone.values.flatten.each {|e| sum +=e}
  if sum > 21                                                           # the condition of bust is  over 21
    return "You are busted!"
  elsif sum == 21                                                       # general win situation withour ACE
    return "You won!"
  elsif sum == 11 and cards_of_someone.values.flatten.include?(1)   # for you have at least ONE ACE and number = 11
    return "You won!"
  else
  end
end

def check_result_4_dueler (cards_of_someone,cards_of_player)                       #check result of the game of dueler at anytime
  sum_p =0 
  cards_of_player.values.flatten.each{|e| sum_p +=e}
  sum = 0
  cards_of_someone.values.flatten.each {|e| sum +=e}
  if sum > sum_p and sum>16 and sum<21
    return "Dueler won!"
  elsif sum > 21                                                           # the condition of bust is  over 21
    return "Dueler is busted and you won!"
  elsif sum == 21                                                       # general win situation withour ACE
    return "Dueler won!"
  elsif sum == 11 and cards_of_someone.values.flatten.include?(1)   # for you have at least ONE ACE and number = 11
    return "Dueler won!"
  else
  end
end




 until play_or_exit == "exit"
puts "Welcome to blackjacks!"
loop do 
  puts "What is your name?"
  player_name = gets.chomp
  break if player_name != ""
end
puts "You are given 2 cards"
draw_card(cards_of_player,real_cards_player)
draw_card(cards_of_player,real_cards_player)

puts "Dueler is given 2 cards"
draw_card(cards_of_dueler,real_cards_dueler)
draw_card(cards_of_dueler,real_cards_dueler)



puts "Dueler has the cards #{real_cards_dueler}"
puts "#{player_name}, you are given the cards #{real_cards_player}"
loop do 
  break if check_result(cards_of_player)
  puts "you wanna hit or stay!"
  player_choice = gets.chomp.downcase
  break if player_choice == "hit" || player_choice =="stay"
end

while player_choice == "hit"

draw_card(cards_of_player,real_cards_player)
puts "#{player_name}, you are given the cards #{real_cards_player}"
break if check_result(cards_of_player)
loop do 
  puts "you wanna hit or stay!"
  player_choice = gets.chomp.downcase
  break if player_choice == "hit" || player_choice =="stay"
end
end

puts check_result(cards_of_player)

 

while player_choice == "stay"
  break if check_result_4_dueler(cards_of_dueler,cards_of_player)
draw_card(cards_of_dueler,real_cards_dueler)
puts " Dueler has the cards #{real_cards_dueler}"
break if check_result_4_dueler(cards_of_dueler,cards_of_player)         # testing
end 
puts check_result_4_dueler( cards_of_dueler, cards_of_player)           #testing

loop do
puts "Play again or exit? (play/exit)"
play_or_exit = gets.chomp.downcase
break if play_or_exit == "play" || play_or_exit =="exit"
end

end

puts "Goodbye,#{player_name}. Thank you for time! :)"