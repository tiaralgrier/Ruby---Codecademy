#1 Getting User Input
print "Thtring, pleathe: "
user_input = gets.chomp

#2 .downcase!
user_input.downcase!

#3 Set up 'If' branch
#3a Part 1: For the if half of our branch, we want to check whether the user’s input contains an "s".
if user_input.include? "s"
  #print "This string contains the letter s."
	#3b Part 2: When we find "s", we want Ruby to replace every instance of "s" it finds with "th". We can do this with the .gsub! method, which stands for global substitution. Note: you cannot put a space between gsub! and the bit in parentheses.
	user_input.gsub!(/s/, "the")
	#5 Print new string using interpolation
	puts "Your new thtring thayth: #{user_input}"
#4 Set Up the 'Else' Branch
else
  print "Your string didn't have the letter s in it."
end