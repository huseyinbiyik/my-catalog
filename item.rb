class Item
  attr_reader :archived

  def initialize(_genre, _author, _soure, _label, _publish_date)
    @id = Random.rand(1..1000)
    @archived = false
  end
end
