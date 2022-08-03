require './base/book'

describe Book do
  before :each do
    @book_one = Book.new 'Roland', 'bad', '12-07-2000'
    @book_two = Book.new 'Gabrielle', 'good', '12-07-2000'
    @book_three = Book.new 'Joelle', 'good', '12-07-2019'
    @book_four = Book.new 'Publisher', 'bad', '12-07-2019'
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
