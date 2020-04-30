require 'game'

describe Game do
  describe '#attack' do
    it 'reduces hp by 10' do
      subject = Game.new("player_1", "player_2")
      expect{ subject.attack }.to change{ subject.player_2.hp }.by(-10)
    end
  end
end
