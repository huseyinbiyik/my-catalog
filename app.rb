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
end
