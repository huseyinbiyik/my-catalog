require_relative 'genre'
require_relative 'author'
require_relative 'label'
require_relative 'source'

class LoadData
  attr_accessor :genres, :authors, :sources, :labels

  def initialize
    # add sample genre
    @genres = @genres.count.zero? ? [Genre.new('Comedy'), Genre.new('Thriller')] : @genres
    # add sample author
    @authors = @authors.count.zero? ? [Author.new('Adam', 'Lincoln'), Author.new('John', 'Doe')] : @authors
    # add source
    @sources = @sources.count.zero? ? [Source.new('From a friend'), Source.new('Online shop')] : @sources
    # add label
    @labels = @labels.count.zero? ? [Label.new('Gift', 'blue'), Label.new('New', 'Yellow')] : @labels
  end
end
