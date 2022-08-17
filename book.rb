require './item'

class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date, :author, :source, :genre, :label

  def initialize(*item, publisher, cover_state)
    genre, author, source, label, publish_date = *item
    super(genre, author, source, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
    @archived = can_be_archived?
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'publisher' => @publisher,
      'cover_state' => @cover_state,
      'publish_date' => @publish_date,
      'author' => @author,
      'source' => @source,
      'genre' => @genre,
      'label' => @label
    }.to_json(*args)
  end

  private

  def can_be_archived?
    @archived = if super || @cover_state == 'bad'
                  true
                else
                  false
                end
    
  end
end
