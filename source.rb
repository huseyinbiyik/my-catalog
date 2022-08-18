class Source
  attr_reader :items, :id, :name

  def initialize(name)
    @id = Random.rand(1..100)
    @name = name
    @items = []
  end

  def add_source(item)
    @items << item
    item.source = self
  end
end
