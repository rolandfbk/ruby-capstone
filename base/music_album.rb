require './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name

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
