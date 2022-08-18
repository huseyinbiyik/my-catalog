require_relative 'genre'
require_relative 'author'
require_relative 'label'
require_relative 'source'

def load_data
  #add sample genre
  $genres = [Genre.new("Comedy"), Genre.new("Thriller")]
  #add sample author
  $authors = [Author.new("Adam", "Lincoln"), Author.new("John", "Doe")]
  #add source
  $sources = [Source.new("From a friend"), Source.new("Online shop")]
  #add label
  $labels = [Label.new("Gift", "blue"), Label.new("New", "Yellow")]
end