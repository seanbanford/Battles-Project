require 'player'

describe Player do
  subject(:ted) { Player.new('Ted') }
  subject(:fred) { Player.new('Fred') }

  describe '#name' do
    it 'Returns name' do
      expect(ted.name).to eq 'Ted'
    end
  end

  describe '#hit_points' do
    it 'Returns the hit points' do
      expect(ted.hit_points).to eql described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(fred).to receive(:receive_damage)
      ted.attack(fred)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit points' do
      expect {ted.receive_damage}.to change {ted.hit_points}.by(-10)
    end
  end
end
