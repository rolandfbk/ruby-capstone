class Item
  attr_accessor :publish_date, :author, :label, :archived, :genre

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = nil
  end

  def move_to_archived
    @archived = true if can_be_achived?
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def add_source(source)
    @source = source
    source.items << slef unless source.items.include?(self)
  end

  private

  def can_be_achived?
    Time.now.year - @publish_date.year > 10
  end
end