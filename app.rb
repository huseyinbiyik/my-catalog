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
end
