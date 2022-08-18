require_relative 'music_album'
require_relative 'app'
require 'pry'
def music_album_options
  puts 'Select author from the following list by index: '
  $authors.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.first_name} #{item.last_name}"
  end
  author = gets.chomp.to_i

  puts 'Select the genre from the following list by index: '
  $genres.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.name}"
  end
  genre = gets.chomp.to_i

  puts 'Select source from the following list by index: '
  $sources.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.name}"
  end
  source = gets.chomp.to_i

  puts 'Select the label from the following list by index: '
  $labels.each_with_index do |item, index|
    puts "[#{index}]: Title: #{item.title} Color: #{item.color}"
  end
  label = gets.chomp.to_i

  puts 'Publish date? Please enter in this format: YYYY/MM/DD'
  publish_date = gets.chomp

  puts 'The music album is available on spotify? [Y/N]'
  spotify = gets.chomp
  
  on_spotify = spotify == 'Y'
  album = MusicAlbum.new(publish_date, on_spotify)
  album.author = $authors[author]
  album.label = $labels[label]
  album.source = $sources[source]
  album.genre = $genres[genre]
  @albums.push(album)
  p @albums
end