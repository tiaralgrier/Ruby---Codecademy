#1 Getting the User's Input
puts "Text to search through: "
text = gets.chomp

puts "Word to redact: "
redact = gets.chomp

#2 The .split Method: Next, we’ll want to divide the user’s input into individual words.
words = text.split(" ")

=begin
#3 Iterate through a given sentence
words.each do |word|
  print word
end
=end

#4 Replace the selected word with REDACTED
words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end