require './book'

describe Book do
  before :each do
    @book_one = Book.new publisher, cover_state, genre, author, source, label, publish_date
    @book_two = Book.new publisher, cover_state, genre, author, source, label, publish_date
    @book_three = Book.new publisher, cover_state, genre, author, source, label, publish_date
    @book_four = Book.new publisher, cover_state, genre, author, source, label, publish_date
  end

  it 'The can_be_achived? method returns true if difference between current date and publish date is greater than 10 and cover_state equals to "bad"' do
    expect(@book_one.can_be_achived?).to be true
  end

  it 'The can_be_achived? method returns true if difference between current date and publish date is greater than 10 and cover_state equals to "good"' do
    expect(@book_two.can_be_achived?).to be true
  end

  it 'The can_be_achived? method returns false if difference between current date and publish date is less than 10 and cover_state equals to "good"' do
    expect(@book_three.can_be_achived?).to be false
  end

  it 'The can_be_achived? method returns false if difference between current date and publish date is less than 10 and cover_state equals to "bad"' do
    expect(@book_four.can_be_achived?).to be true
  end
end
