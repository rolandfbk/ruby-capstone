require 'json'
require './book'
require './label'
require './genre'
require './author'
require './source'

# rubocop:disable Metrics/ParameterLists
# rubocop:disable Metrics/MethodLength

def load_books(mybook, mylabel)
  if File.exist?('./data/books.json')
    file = File.open('./data/books.json')

    if file.size.zero?
      mybook << []
      mylabel << []
    else
      books = JSON.parse(File.read('./data/books.json'))

      books.each do |book|
        genre = Genre.new(book['book_genre'])
        author = Author.new(book['book_author_first_name'], book['book_author_last_name'])
        source = Source.new(book['book_source'])
        label = Label.new(book['book_label_title'], book['book_label_color'])

        mybook << Book.new(book['book_publisher'], book['book_cover_state'], genre, author, source, label,
                           book['book_publish_date'])
        mylabel << label
      end
    end
    file.close
  else
    mybook << []
    mylabel << []
  end
end

def save_book(book_publisher, book_cover_state, book_genre, book_author_first_name, book_author_last_name, book_source,
              book_label_title, book_label_color, book_publish_date)
  obj = {
    book_publisher: book_publisher,
    book_cover_state: book_cover_state,
    book_genre: book_genre,
    book_author_first_name: book_author_first_name,
    book_author_last_name: book_author_last_name,
    book_source: book_source,
    book_label_title: book_label_title,
    book_label_color: book_label_color,
    book_publish_date: book_publish_date
  }

  if File.exist?('./data/books.json')
    file = File.open('./data/books.json')

    if file.size.zero?
      book = [obj]
    else
      book = JSON.parse(File.read('./data/books.json'))
      book << obj
    end

    file.close

    myfile = File.open('./data/books.json', 'w')
    myfile.write(JSON.pretty_generate(book))
    myfile.close
  end
end

# rubocop:enable Metrics/ParameterLists
# rubocop:enable Metrics/MethodLength
