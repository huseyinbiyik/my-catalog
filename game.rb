require_relative 'item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, multiplayer, last_played_at)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && archived
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'multiplayer' => @multiplayer,
      'last_played_at' => @last_played_at,
      'genre' => @genre,
      'author' => @author,
      'source' => @source,
      'label' => @label,
      'publish_date' => @publish_date
    }.to_json(*args)
  end
end
