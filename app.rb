require_relative 'create_book'
require_relative 'book'
require_relative 'create_game'
require_relative 'game'
require_relative 'create_music_album'
require_relative 'load_data'

require 'json'

class App
  attr_accessor :books, :albums, :games, :data

  def initialize
    @books = []
    @albums = []
    @games = []
    @data = LoadData.new
  end

  def list_books
    puts 'Listing all books from library'
    @books.each do |book|
      puts "➡️ Publish Date: '#{book.publish_date}', Publisher: '#{book.publisher}' Cover State: '#{book.cover_state}'
      Archived: '#{book.archived}'"
    end
  end

  def add_books
    create_book(@data)
  end

  # def add_game
  #   create_game
  # end

  def list_games
    @games.each do |game|
      puts "Genre: #{game.genre}, Author: #{game.author}, Source: #{game.source}, Label: #{game.label}"
    end
  end

  def list_labels
    puts 'Listing all labels from library'
    @data.labels.each do |label|
      puts "Label: #{label.title}, Color: #{label.color}"
    end
  end

  def list_authors
    puts 'Listing all authors from library'
    @data.authors.each do |author|
      puts "Author: #{author.first_name}"
      puts "Author: #{author.last_name}"
    end
  end

  def list_sources
    puts 'Listing all sources from library'
    @data.sources.each do |source|
      puts "Source: #{source.name}"
    end
  end

  def save_files
    File.write('./data/games.json', @games.to_json)
    File.write('./data/books.json', @books.to_json)
    puts 'The file saved successfully 👍✅'
  end

  def open_files
    if File.exist?('./data/games.json')
      JSON.parse(File.read('./data/games.json')).map do |_game|
        # load_games(game)
      end
      puts 'The games file has been loaded successfully!✅🎯'
    else
      puts 'The games file does not exist!🤔'
    end

    if File.exist?('./data/books.json')
      JSON.parse(File.read('./data/books.json')).map do |book|
        load_books(book)
      end
      puts 'The books file has been loaded successfully!✅📚'
    else
      puts 'The books file does not exist!🤔'
    end
  end

  # def load_games(game)
  #   game_object = create_game_object(game)
  #   @games << game_object
  # end

  def load_books(book)
    book_object = create_book_object(book)
    @books << book_object
  end

  # def create_game_object(game)
  #   Game.new(game['multiplayer'], game['last_played_at'], game['genre'], game['author'], game['source'], game['label'],
  #            game['publish_date'])
  # end

  def create_book_object(book)
    Book.new(book['publish_date'], book['publisher'], book['cover_state'])
  end

  def list_albums
    @albums.each do |album|
      puts "Author: '#{album.author}', Publish Date: '#{alubm.publish_date}', Available on spotify: '#{book.on_spotify}'"
    end
  end

  def list_genres
    @data.genres.each do |genre|
      puts "'#{genre.name}' "
    end
  end

  def create_music_album
    music_album_options(@data)
  end
end
