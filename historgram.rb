puts "Text please: " #1 Get user input
text = gets.chomp
words = text.split #2 Build the Words Array:** By calling the `.split` method on `text`, we can transform it into an array

frequencies = Hash.new(0) #3 Creating the Frequencies Hash: make sure the hash has a default value
words.each { |word| frequencies[word] += 1 } #4 Iterating Over the Array: iterate over `words` to add each word to our `frequencies` hash, one at a time

frequencies = frequencies.sort_by do |word, count| #5 Sorting the Hash
  count
end
frequencies.reverse!

frequencies.each do |word, count| #6 Iterating Over the Hash: iterate over the array to print out each key-value pair to the console
  puts word + " " + count.to_s # .to_s => to string
end