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
end
