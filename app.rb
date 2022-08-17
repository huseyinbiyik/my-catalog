require_relative 'create_book'
require_relative 'book'
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

  def list_books
    puts 'Listing all books from library'
    @books.each do |book|
      puts "Book Author: '#{book.author}', Book Source: '#{book.source}',
      Book Publish Date: '#{book.publish_date}', Book Publisher: '#{book.publisher}'"
    end
  end

  def add_book
    create_book
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
    File.write('./data/books.json', @books.to_json)
    puts 'The file saved successfully 👍✅'
  end

  # rubocop:disable Style/GuardClause
  def open_files
    if File.exist?('./data/games.json')
      JSON.parse(File.read('./data/games.json')).map do |game|
        load_games(game)
      end
    end
    if File.exist?('./data/books.json')
      JSON.parse(File.read('./data/books.json')).map do |book|
        load_books(book)
      end
    end
  end
  # rubocop:enable Style/GuardClause

  def load_games(game)
    game_object = create_game_object(game)
    @games << game_object
  end

  def load_books(book)
    book_object = create_book_object(book)
    @books << book_object
  end

  def create_game_object(game)
    Game.new(game['multiplayer'], game['last_played_at'], game['genre'], game['author'], game['source'], game['label'],
             game['publish_date'])
  end

  def create_book_object(book)
    Book.new(book['genre'], book['author'], book['source'], book['label'], book['publish_date'], book['publisher'],
             book['cover_state'])
  end
end
