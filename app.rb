class App
  def run
    puts 'Welcome To The Catalog of My Things!'
    puts
    puts
    options
  end

  def options
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all labels'
    puts '3 - List all musics'
    puts '4 - List all genres'
    puts '5 - List all games'
    puts '6 - List all authors'
    puts '7 - Create a book'
    puts '8 - Create a music'
    puts '9 - Create a game'
    puts '10 - Exit'

    choice = gets.chomp
    # menu(choice)
  end
end