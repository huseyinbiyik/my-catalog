require_relative 'app'
require_relative 'game'

def create_game(_data)
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
  puts 'Is this game multiplayer?'
  multiplayer = gets.chomp
  puts 'What is the last played date?'
  last_played_at = gets.chomp

  game = Game.new(multiplayer, last_played_at, genre, author, source, label, publish_date)

  @games.push(game)
  p @games
end
