require_relative 'create_game'
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
end
