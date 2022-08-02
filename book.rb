require './item'
require 'date'

class Book < Item
  def initialize(publisher, cover_state, genre, author, source, label, publish_date)
    super(genre, author, source, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_achived?
    Time.now.year - Date.parse(@publish_date).year > 10 || @cover_state == 'bad'
  end
end
