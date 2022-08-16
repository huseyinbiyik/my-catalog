require_relative 'book'

class App
  attr_accessor :books, :albums, :games

  def initialize
    @books = []
    @albums = []
    @games = []
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}"
      puts "Author: #{book.author}"
      puts "Source: #{book.source}"
      puts "Label: #{book.label}"
      puts "Publish date: #{book.publish_date}"
      puts "Genre: #{book.genre}"
      puts "Archived: #{book.archived}"
      puts '-' * 20
    end
  end

  def add_book
    puts 'Enter book title:'
    title = gets.chomp
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
    puts 'Enter publisher:'
    publisher = gets.chomp
    puts 'Enter book cover state (good, bad):'
    cover_state = gets.chomp
    @books << Book.new(genre, author, source, label, publish_date, publisher, cover_state)
  end

  def add_game
    puts 'add game'
  end
end
