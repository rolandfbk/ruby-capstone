class Item
  attr_accessor :my_label
  def initialize(genre, author, source, label, publish_date)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = nil
  end

  def move_to_archived
    @archived = true if can_be_achived?
  end

  private

  def can_be_achived?
    Time.now.year - @publish_date.year > 10 ? true : false
  end
end