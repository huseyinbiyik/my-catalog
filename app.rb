class App
  attr_accessor :books, :albums, :games

  def initialize
    @books = []
    @albums = []
    @games = []
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
