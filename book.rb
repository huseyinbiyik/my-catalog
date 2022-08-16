require "./item.rb"

class Book < Item
    def initialize(genre, author, source, label, publish_date, publisher, cover_state)
        super(genre, author, source, label, publish_date)
        @publisher = publisher
        @cover_state = cover_state
    end
end