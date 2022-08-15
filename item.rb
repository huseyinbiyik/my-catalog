class Item
  attr_reader :archived

  def initialize(genre, author, _soure, label, publish_date)
    @id = Random.rand(1..1000)
    @archived = false
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end

  def can_be_archived?
    if Time.now - @publish_date > 365 * 10
      @archived = true
    end
  end

  def move_to_archive
  end
end
