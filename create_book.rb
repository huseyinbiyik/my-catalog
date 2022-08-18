require_relative 'app'
require_relative 'book'

def create_book(data)
  puts 'Select author from the following list by index: '
  data.authors.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.first_name} #{item.last_name}"
  end
  author = gets.chomp.to_i
  puts 'Select the genre from the following list by index: '
  data.genres.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.name}"
  end
  genre = gets.chomp.to_i
  puts 'Select source from the following list by index: '
  data.sources.each_with_index do |item, index|
    puts "[#{index}]: Name: #{item.name}"
  end
  source = gets.chomp.to_i
  puts 'Select the label from the following list by index: '
  data.labels.each_with_index do |item, index|
    puts "[#{index}]: Title: #{item.title} Color: #{item.color}"
  end
  label = gets.chomp.to_i
  print 'Enter the book publisher: '
  publisher = gets.chomp
  print 'Enter publication date of the book: '
  publish_date = gets.chomp
  print 'Enter the book cover state (good, bad): '
  cover_state = gets.chomp
  add_book(publish_date, publisher, cover_state, author, label, source, genre, data)
end

def add_book(publish_date, publisher, cover_state, *attributes)
  author, label, source, genre, data = *attributes
  book = Book.new(publish_date, publisher, cover_state)
  book.author = data.authors[author]
  book.label = data.labels[label]
  book.source = data.sources[source]
  book.genre = data.genres[genre]
  @books.push(book)
  puts 'The book has been added successfully! ✅📚'
  p @books
end
