require './label'
require './book'

describe Label do
  before :each do
    @label = Label.new 'True Stories', 'Blue'
    @book = Book.new publisher, cover_state, genre, author, source, label, publish_date
  end

  it 'The add_item method should add an book item to the label and total of books in with the label must be 1' do
    @label.add_item(@book)
    expect(@label.items.length).to eq 1
  end
end
