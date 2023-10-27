# 1 - Create a hash to hold movies their
movies = {
  candyman: 10,
  nightmare_on_elm_street: 9,
  halloween: 9,
  hellraiser: 8,
  silent_hill: 9,
  saw: 7,
  jeepers_creepers_2: 8
}

# 2 - Prompt the user for input
puts "Would you like to:
- add a movie?
- update a movie?
- display movies?
- delete a movie?"
choice = gets.chomp

# 3 - Create case statement for the choice var
case choice
  when "add"
    # 4 - Prompt the user for a movie title and rating
    puts "What is the movie's title? "
    title = gets.chomp.to_sym
    puts "How would you rate it? "
    rating = gets.chomp.to_i
    # 7 - Call .to_sym on your title and .to_i on your rating so that your movie titles are stored as symbols in the hash and the associated ratings are stored as integers. (above)

    # 8 - if/else statement for if title exists or not
    if movies[title.to_sym].nil?
      # 5 - Add title and rating to hash
      movies[title] = rating
    else
      puts "This movie already exists on the list."
    end
    
    # 6 - Indicate the pair was added
    puts "The movie #{title} with the rating of #{rating} stars was added to the list!"
  when "update"
    # 9 - Prompt user for title
    puts "What is the movie's title? "
    title = gets.chomp

    if movies[title.to_sym].nil?
      puts "This movie doesn't exist on the movies list."
    else
      puts "What's your new rating for this movie? "
      rating = gets.chomp
      movies[title] = rating
    end
  when "display"
    # 10 - iterate through hash and puts title and rating
    movies.each { |title, rating| puts "#{title}: #{rating}" }
  when "delete"
    # Get title from user
    puts "What's the movie title? "
    title = gets.chomp

    #11 - delete title entered by user
    if movies[title.to_sym].nil?
      puts "This movie doesn't exist on the movies list."
    else
      movies.delete(title.to_sym)
    end
  else
    puts "Error!"
end