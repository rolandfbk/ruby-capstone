require './book'
require './label'
require './genre'
require './author'
require './source'

class Bookapp
  def initialize
    @all_books = []
    @all_labels = []
  end

  def list_all_books
    puts 'There are no books to show! Please add a book.' if @all_books.empty?

    @all_books.each { |book| puts "ID: #{book.id}, Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Genre: #{book.genre.name}, Author: #{book.author.first_name} #{book.author.last_name}, Source: #{book.source.name}, Label: #{book.label.title}, Publish Date: #{book.publish_date}, Archived: #{book.archived}" }
    puts
    puts
  end

  def list_all_labels
    puts 'There are no labels to show! Please add a label.' if @all_labels.empty?

    @all_labels.each { |label| puts "Title: \'#{label.title}\', Color: \'#{label.color}\'" }
    puts
    puts
  end

  def add_book
    print 'Publisher: '
    book_publisher = gets.chomp

    print 'Cover State: '
    book_cover_state = gets.chomp

    print 'Genre: '
    book_genre = gets.chomp

    print 'Author First Name: '
    book_author_first_name = gets.chomp

    print 'Author Last Name: '
    book_author_last_name = gets.chomp

    print 'Source: '
    book_source = gets.chomp

    print 'Label Title: '
    book_label_title = gets.chomp

    print 'Label Color: '
    book_label_color = gets.chomp

    print 'Publish Date: '
    book_publish_date = gets.chomp

    genre = Genre.new book_genre
    author = Author.new book_author_first_name, book_author_last_name
    source = Source.new book_source
    label = Label.new book_label_title, book_label_color

    mybook = Book.new book_publisher, book_cover_state, genre, author, source, label, book_publish_date

    @all_books << mybook
    @all_labels << label

    label.add_item(mybook)

    save_book(book_publisher, book_cover_state, book_genre, book_author_first_name, book_author_last_name, book_source, book_label_title, book_label_color, book_publish_date)
  end
end