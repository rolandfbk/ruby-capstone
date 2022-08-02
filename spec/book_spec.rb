require './book'

describe Book do
  before :each do
    @book_true = Book.new publisher, cover_state, genre, author, source, label, publish_date
    @book_false = Book.new publisher, cover_state, genre, author, source, label, publish_date
  end

  it 'The can_be_achived? method returns true if difference between current date and publish date is greater than 10' do
    expect(@book_true.can_be_achived?).to be true
  end

  it 'The can_be_achived? method returns false if difference between current date and publish date is less than 10' do
    expect(@book_false.can_be_achived?).to be false
  end
end
