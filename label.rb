class Label
  attr_reader :items, :id, :title, :color

  def initialize(title, color)
    @id = Random.rand(1..100)
    @title = title
    @color = color
    @items = []
  end

  def add_label(item)
    @items << item
    item.label = self
  end
end
