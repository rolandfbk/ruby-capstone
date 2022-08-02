require 'book_app'

# rubocop:disable Metrics

class App
  def run(book_app)
    puts 'Welcome To The Catalog of My Things!'
    puts
    puts
    options book_app
  end

  def options(book_app)
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
    menu choice, book_app
  end

  def menu(choice, book_app)
    case choice
    when '1'
      book_app.list_all_books
      message_menu myapp
    when '2'
      book_app.list_all_labels
      options book_app
    when '3'
      puts 'Option 3 in construction'
    when '4'
      puts 'Option 4 in construction'
    when '5'
      puts 'Option 5 in construction'
    when '6'
      puts 'Option 6 in construction'
    when '7'
      book_app.add_book
      options book_app
    when '8'
      puts 'Option 8 in construction'
    when '9'
      puts 'Option 9 in construction'
    when '10'
      puts 'Thank you for using the School Library App!'
    else
      puts 'Please enter a number between 1 and 10'
    end
  end
end

# rubocop:enable Metrics
