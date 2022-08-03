require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name
  attr_reader :publish_date

  def initialize(publish_date, name)
    super(publish_date)
    @on_spotify = false
    @name = name
  end

  private

  def can_be_archived?
    super && @on_spotify
  end
end
