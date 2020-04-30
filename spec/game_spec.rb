require 'game'

describe Game do
  describe '#attack' do
    it 'reduces hp by 10' do
      player_1 = Player.new("Player1")
      player_2 = Player.new("Player2")
      subject = Game.new(player_1, player_2)
      expect{ subject.attack }.to change{ player_2.hp }.by(-10)
    end
  end
end
