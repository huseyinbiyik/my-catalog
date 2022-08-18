require_relative '../genre'
require 'yaml'

describe Genre do
  before :each do
    @genre = Genre.new('Comedy')
  end

  it 'return the instance of the genre' do
    @genre.should be_an_instance_of Genre
  end

  it 'returns the correct genre' do
    @genre.name.should eql 'Comedy'
  end
end
