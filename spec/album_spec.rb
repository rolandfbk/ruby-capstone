require './base/music_album'

describe MusicAlbum do
  it 'Has a name' do
    album = MusicAlbum.new('28-03-1994', 'The Division Bell')
    expect(album.name).to eq('The Division Bell')
  end
end
