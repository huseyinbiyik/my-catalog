require_relative 'app'
require_relative 'book'

def create_book
  print 'Enter the book publisher: '
  publisher = gets.chomp

  print 'Enter the book author: '
  author = gets.chomp

  print 'Enter the book genre: '
  genre = gets.chomp

  print 'Enter the book label: '
  label = gets.chomp

  print 'Enter the book source:'
  source = gets.chomp

  print 'Enter publication date of the book in this format(day/month/year): '
  publish_date = gets.chomp

  print 'Enter the book cover state (good, bad): '
  cover_state = gets.chomp

  book = Book.new(genre, author, source, label, publish_date, publisher, cover_state)
  @books.push(book)
  p @books
  puts 'A book has been added successfully!✅📚'
end
