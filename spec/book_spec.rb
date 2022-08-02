require './book'
require './label'

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

describe Book do
  before :each do
    genre = Genre.new
    author = Author.new
    source = Source.new
    label = Label.new 'True Stories', 'Blue'
    @book_one = Book.new 'Roland', 'bad', genre, author, source, label, '12-07-2000'
    @book_two = Book.new 'Gabrielle', 'good', genre, author, source, label, '12-07-2000'
    @book_three = Book.new 'Joelle', 'good', genre, author, source, label, '12-07-2019'
    @book_four = Book.new 'Publisher', 'bad', genre, author, source, label, '12-07-2019'
  end

  it 'The can_be_achived? method returns true if difference between current date
    and publish date is greater than 10 and cover_state equals to "bad"' do
    @book_one.move_to_archived
    expect(@book_one.archived).to be true
  end

  it 'The can_be_achived? method returns true if difference between current
    date and publish date is greater than 10 and cover_state equals to "good"' do
    @book_two.move_to_archived
    expect(@book_two.archived).to be true
  end

  it 'The can_be_achived? method returns false if difference between current
    date and publish date is less than 10 and cover_state equals to "good"' do
    @book_three.move_to_archived
    expect(@book_three.archived).to be nil
  end

  it 'The can_be_achived? method returns false if difference between current
    date and publish date is less than 10 and cover_state equals to "bad"' do
    @book_four.move_to_archived
    expect(@book_four.archived).to be true
  end
end
