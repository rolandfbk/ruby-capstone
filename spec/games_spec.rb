require './base/game'

describe Game do
  before :each do
    @game = Game.new('Ali', '2018-01-01', '2010-12-14')
  end
  context 'When creating @game, an instance of class Game ' do
    it 'takes four parameters and return a Game object' do
      expect(@game).to be_instance_of Game
    end
  end

  context 'When archiving a game' do
    it 'archives the game' do
      expect(@game.can_be_archived?).to be_truthy
    end
  end
end
