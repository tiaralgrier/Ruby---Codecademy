print "What's your first name? " # 1 Prompting the User
first_name = gets.chomp # 2 Getting Input

print "What's your last name? " # 3 Repeat for More Input
last_name = gets.chomp

print "What city are you from? "
city = gets.chomp

print "What state (abbreviation) are you from? "
state = gets.chomp

#5 Formatting with String Methods
first_name.capitalize! #To capitalize first letter
last_name.capitalize! #! is needed
city.capitalize!
state.upcase!

# 4 Print
puts "Your name is #{first_name} #{last_name}, and you're from #{city}, #{state}!" 