require_relative 'create_game'
require_relative 'game'
require 'json'
class App
  attr_accessor :books, :albums, :games

  def initialize
    @books = []
    @albums = []
    @games = []
  end

  def add_game
    create_game
  end

  def list_games
    @games.each do |game|
      puts "Genre: #{game.genre}, Author: #{game.author}, Source: #{game.source}, Label: #{game.label}"
    end
  end

  def list_authors
    @games.each do |game|
      puts "Author: #{game.author}"
    end
  end

  def save_files
    File.write('./data/games.json', @games.to_json)
    puts 'The file saved successfully 👍✅'
  end

  def open_files
    if File.exist?('./data/games.json')
      JSON.parse(File.read('./data/games.json')).map do |game|
        load_games(game)
      end
    end
  end

  def load_games(game)
    game_object = create_game_object(game)
    @games << game_object
  end

  def create_game_object(game)
    Game.new(game['multiplayer'], game['last_played_at'], game['genre'], game['author'], game['source'], game['label'],
             game['publish_date'])
  end
end
