require_relative 'item'
class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'on_spotify' => @on_spotify,
      'publish_date' => @publish_date,
      'author' => @author,
      'source' => @source,
      'genre' => @genre,
      'label' => @label
    }.to_json(*args)
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end
