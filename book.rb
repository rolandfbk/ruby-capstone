require 'item'

class Book < item
  def initialize(publisher, cover_state, genre, author, source, label, publish_date)
    super(genre, author, source, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_achived?
    Time.now.year - @publish_date.year > 10 ? true : false
  end
end
