require 'date'

class Item
  attr_reader :archived, :author, :genre, :label, :source, :publish_date

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @archived = false
    @publish_date = publish_date
  end

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)).to_i > 365 * 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def source=(source)
    @source = source
    source.items.push(self) unless source.items.include?(self)
  end
end
