require 'json'
require_relative '../base/genre'
require_relative '../base/music_album'
require 'Date'

def load_album_genre
  if File.exist?('./data/albums.json')
    file = File.open('./data/albums.json')

    if file.size.zero?
      albums = []
      genres = []
    else
      albums = JSON.parse(File.read('./data/albums.json'))

      albums.each do |album|
        genre = Genre.new(album['genre'])
        album_current = MusicAlbum.new(Date.parse(album['published']), album['name'])
        genres << genre
        albums << album_current
        genre.add_item(album_current)
      end
    end
    file.close
  else
    albums = []
    genres = []
  end
end
