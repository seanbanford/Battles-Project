require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1_name) { double :player }
  let(:player_2_name) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(fred).to receive(:receive_damage)
      ted.attack(fred)
    end
  end

end
