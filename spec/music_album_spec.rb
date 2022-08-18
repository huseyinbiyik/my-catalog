require_relative '../music_album'
require 'yaml'

describe MusicAlbum do
  before :each do
    @album = MusicAlbum.new('2022-02-22', true)
  end
  it 'returns the correct published date' do
    @album.publish_date.should eql '2022-02-22'
  end
  it 'returns the correct on_spotify' do
    @album.on_spotify.should eql true
  end
end
