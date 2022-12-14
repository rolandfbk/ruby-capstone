require_relative './item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  # private
  def can_be_archived?
    current_year = Time.new.year
    seniority = current_year - @last_played_at.year
    super && seniority > 2
  end
end
