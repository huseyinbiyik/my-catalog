require_relative 'app'
require_relative 'game'

def create_game
  print 'Is it a multiplayer game? '
  multiplayer = gets.chomp

  print 'When was the last time you played? Please enter in this format: YYYY/MM/DD '
  last_played_at = gets.chomp

  print 'What is the genre of the game? '
  genre = gets.chomp

  print 'Who is the author? '
  author = gets.chomp

  print 'What is the source? '
  source = gets.chomp

  print 'What is the label?'
  label = gets.chomp

  print 'Publish date? Please enter in this format: YYYY/MM/DD'
  publish_date = gets.chomp

  game = Game.new(multiplayer, last_played_at, genre, author, source, label, publish_date)

  @games.push(game)
  p @games
end