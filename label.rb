class Label
    attr_reader :items
    
    def initialize(title, color)
        @id = Random.rand(1..100)
        @title = title
        @color = color
        @items = []
    end
end
