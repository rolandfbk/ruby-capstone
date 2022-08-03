require './base/genre'

describe Genre do
  it 'has a name' do
    genre = Genre.new('Rock n Roll')
    expect(genre.name).to eq('Rock n Roll')
  end
end
