require_relative 'item'
require 'date'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_achived?
    Time.now.year - Date.parse(@publish_date).year > 10 || @cover_state == 'bad'
  end
end
