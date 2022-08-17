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
    puts 'Enter publisher:'
    publisher = gets.chomp
    puts 'Enter book author:'
    author = gets.chomp
    puts 'Enter book genre:'
    genre = gets.chomp
    puts 'Enter book label:'
    label = gets.chomp
    puts 'Enter book source:'
    source = gets.chomp
    puts 'Enter publication date:'
    publish_date = gets.chomp
    puts 'Enter book cover state (good, bad):'
    cover_state = gets.chomp
    book = Book.new(genre, author, source, label, publish_date, publisher, cover_state)
    @books.push(book)
    puts 'A book has been added successfully!✅📚'
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
  end
  # rubocop:enable Style/GuardClause

  def load_games(game)
    game_object = create_game_object(game)
    @games << game_object
  end

  def create_game_object(game)
    Game.new(game['multiplayer'], game['last_played_at'], game['genre'], game['author'], game['source'], game['label'],
             game['publish_date'])
  end
end
