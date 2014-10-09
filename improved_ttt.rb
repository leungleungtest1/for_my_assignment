$matrix = {1=>nil,2=>nil,3=>nil,4=>nil,
          5=>nil,6=>nil,7=>nil,8=>nil,9=>nil}

# it could empty_hash = {}
# matrix = (1..9).each{|e| empty_hash[e] =  nil }

choice_availabe = [1,2,3,4,5,6,7,8,9]

$ways_to_win = [[1,4,7],[2,5,8],[3,6,9],[1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7]]


def who_win
 $ways_to_win.each do |way_to_win|
    if  ($matrix[way_to_win[0]]=="P")&&($matrix[way_to_win[1]] =="P")&&($matrix[way_to_win[2]] =="P") 
      return "Player won!"
        
    elsif ($matrix[way_to_win[0]]=="C") && ($matrix[way_to_win[1]] =="C") && ($matrix[way_to_win[2]] =="C") 
        return "Computer win!"
        
    else
      return nil
    end
  end
end

def display(arg)
if arg == nil
  " "
else arg
end
end

def show_board
  system 'clear'
puts "#{display($matrix[1])}|#{display($matrix[2])}|#{display($matrix[3])}"
puts "-+-+-" 
puts "#{display($matrix[4])}|#{display($matrix[5])}|#{display($matrix[6])}"
puts "-+-+-"
puts "#{display($matrix[7])}|#{display($matrix[8])}|#{display($matrix[9])}"
end


loop do
begin puts "Choose a position (from 1 to 9) to place a piece."
puts "choice_availabe : #{choice_availabe}"
player_choice = gets.chomp.to_i
end until choice_availabe.include?(player_choice)
$matrix[player_choice] = "P"
choice_availabe.delete(player_choice)

puts who_win
break if who_win!=nil

if choice_availabe == []

else computer_choice = choice_availabe.sample
$matrix[computer_choice] = "C"
choice_availabe.delete(computer_choice)
end

show_board

puts who_win
break if who_win != nil

break puts "It is a tie." if false == $matrix.values.include?(nil)
end