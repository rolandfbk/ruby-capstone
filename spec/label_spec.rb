require './label'
require './book'

class Genre
  def initialize
    @genre = ''
  end
end

class Author
  def initialize
    @author = ''
  end
end

class Source
  def initialize
    @source = ''
  end
end

describe Label do
  before :each do
    genre = Genre.new
    author = Author.new
    source = Source.new
    @label = Label.new 'True Stories', 'Blue'
    @book = Book.new 'Roland', 'bad', genre, author, source, @label, '12-07-2000'
  end

  it 'The add_item method should add an book item to the label
    and total of books in with the label must be 1' do
    @label.add_item(@book)
    expect(@label.items.length).to eq 1
  end
end
