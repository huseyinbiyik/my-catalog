require_relative 'music_album'
require_relative 'app'
require 'pry'

def music_album_options(data)
  puts 'Select author from the following list by index: '
  data.authors.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.first_name} #{item.last_name}"
  end
  author = gets.chomp.to_i
  puts 'Select the genre from the following list by index: '
  data.genres.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.name}"
  end
  genre = gets.chomp.to_i
  puts 'Select source from the following list by index: '
  data.sources.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.name}"
  end
  source = gets.chomp.to_i
  puts 'Select the label from the following list by index: '
  data.labels.each_with_index do |item, index|
    puts "[#{index}]: Title: #{item.title} Color: #{item.color}"
  end
  label = gets.chomp.to_i
  puts 'Publish date? Please enter in this format: YYYY/MM/DD'
  publish_date = gets.chomp
  puts 'The music album is available on spotify? [Y/N]'
  spotify = gets.chomp

  on_spotify = spotify == 'Y'
  add_music_album(publish_date, on_spotify, author, label, source, genre, data)
end

def add_music_album(publish_date, on_spotify, *attributes)
  author, label, source, genre, data = *attributes
  album = MusicAlbum.new(publish_date, on_spotify)
  album.author = data.authors[author]
  album.label = data.labels[label]
  album.source = data.sources[source]
  album.genre = data.genres[genre]
  @albums.push(album)
  p @albums
end
