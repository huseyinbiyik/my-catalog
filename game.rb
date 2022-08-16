require 'item'
class Game < Item
  def initialize(multiplayer, last_date_at, *attributes)
    @multiplayer = multiplayer
    @last_date_at = last_date_at
    super(*attributes)
  end

  def can_be_archived?
    Time.now - @publish_date > 365 * 10
  end
end
