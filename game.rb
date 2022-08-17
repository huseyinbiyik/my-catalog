require_relative 'item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, *attributes)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(*attributes)
  end

  def can_be_archived?
    date = DateTime.parse(@last_played_at).to_date
    archived = (Date.today.year - date.year) > 2
    super && archived
  end
end
