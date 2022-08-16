class Item
  attr_reader :archived, :author

  def initialize(genre, author, source, label, publish_date)
    @id = Random.rand(1..1000)
    @archived = false
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end

  def can_be_archived?
    Time.now - @publish_date > 365 * 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
