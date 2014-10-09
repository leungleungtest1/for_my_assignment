matrix = {1=>"P",2=>nil,3=>"P",4=>nil,
          5=>nil,6=>"P",7=>nil,8=>nil,9=>"P"}

# it could empty_hash = {}
# matrix = (1..9).each{|e| empty_hash[e] =  nil }

choice_availabe = [1,2,3,4,5,6,7,8,9]

$ways_to_win = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]





def who_win
 $ways_to_win.each do |way_to_win|
    if  (matrix[way_to_win[0]]=="P") and (matrix[way_to_win[1]] =="P") and (matrix[way_to_win[2]] =="P") 
      return "Player won!"
        
    elsif (matrix[way_to_win[0]]=="C") and (matrix[way_to_win[1]] =="C") and (matrix[way_to_win[2]] =="C") 
        return "Computer win!"
        
    else
      return nil
    end
  end
end

puts who_win