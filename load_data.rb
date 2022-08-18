require_relative 'genre'
require_relative 'author'
require_relative 'label'
require_relative 'source'

class LoadData
  attr_accessor :genres, :authors, :sources, :labels

  def initialize
    # add sample genre
    @genres = [Genre.new('Comedy'), Genre.new('Thriller')] if @genres.nil?
    # add sample author
    @authors = [Author.new('Adam', 'Lincoln'), Author.new('John', 'Doe')] if @authors.nil?
    # add source
    @sources = [Source.new('From a friend'), Source.new('Online shop')] if @sources.nil?
    # add label
    @labels = [Label.new('Gift', 'blue'), Label.new('New', 'Yellow')] if @labels.nil?
  end
end
