class Game < Item
  def initialize(genre, author, source, label, publish_date, multiplayer, last_date_at)
    super(genre, author, source, label, publish_date)
    @multiplayer = multiplayer
    @last_date_at = last_date_at
  end

  def can_be_archived?
    Time.now - @publish_date > 365 * 10
  end
end
