require_relative 'item'
class MusicAlbum < Item
  def initialize(*item, on_spotify)
    genre, author, source, label, publish_date = *item
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?; end
end
