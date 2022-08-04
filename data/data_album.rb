require 'json'
require_relative '../base/genre'
require_relative '../base/music_album'
require 'Date'

def load_album_genre(my_albums, my_genres)
  if File.exist?('./data/albums.json')
    file = File.open('./data/albums.json')

    if file.size.zero?
      my_albums << []
      my_genres << []
    else
      albums = JSON.parse(File.read('./data/albums.json'))

      my_albums.each do |album|
        name = album['name']
        genre_name = album['genre']
        spotify = album['spotify']
        date = album['published']
        genre = Genre.new(genre_name)
        album = MusicAlbum.new(Date.parse(date), name, spotify)

        my_albums << album
        my_genres << genre
        genre.add_item(album)
      end
    end
    file.close
  else
    my_albums << []
    my_genres << []
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
