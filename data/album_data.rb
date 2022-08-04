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
        album_current = MusicAlbum.new(Date.parse(album['published']), album['name'], album['spotify'])
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

def save_album(date, name, genre, on_spotify)
  obj = {
    published: date,
    name: name,
    genre: genre,
    spotify: on_spotify
  }

  return unless File.exist?('./data/albums.json')

  file = File.open('./data/albums.json')

  if file.size.zero?
    album = [obj]
  else
    album = JSON.parse(File.read('./data/books.json'))
    album << obj
  end

  file.close

  myfile = File.open('./data/albums.json', 'w')
  myfile.write(JSON.pretty_generate(album))
  myfile.close
end
