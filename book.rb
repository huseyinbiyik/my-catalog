require "./item.rb"

class Book < Item
    def initialize(*item, publisher, cover_state)
        genre, author, source, label, publish_date, archived = *item
        super(genre, author, source, label, publish_date)
        @publisher = publisher
        @cover_state = cover_state
    end

    private

    def can_be_archived?
        can_be_archived? || @cover_state == "bad"
    end
end