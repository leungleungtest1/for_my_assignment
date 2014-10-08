
puts "Hello, i am your calculator."

puts "What is number1?"
number1 = gets.chomp

puts "What is number2?"
number2 = gets.chomp

puts "What function do you want?"
puts "1) Add, 2) Subtract, 3)multiply, 4)divide"
function = gets.chomp
until function == '1'|| function =='2'|| function =='3' ||function =='4'
  puts "Please, puts 1 or 2 or 3 or 4"
puts "1) Add, 2) Subtract, 3)multiply, 4)divide"
function = gets.chomp   
end

if function =="1"
  result = number1.to_f + number2.to_f
elsif function == '2'
 result =  number1.to_f - number2.to_f
elsif function == '3'
  result = number1.to_f*number2.to_f
elsif     function == '4'&& number2.to_f==0
  result = "which cannot be divided by zero."
elsif function =='4'    
  result = number1.to_f / number2.to_f
end

puts "Result is #{result}"

    
    