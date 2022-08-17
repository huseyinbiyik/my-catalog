require_relative 'book'
require_relative 'create_game'

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
end
