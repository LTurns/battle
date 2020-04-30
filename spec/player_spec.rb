require 'player'

describe Player do
  subject = Player.new("Name")
  describe '#reduce_points' do
    it 'reduces hp by 10' do
      expect(subject.reduce_points).to eq(50)
    end
  end
end
