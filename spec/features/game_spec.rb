require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finish_game) { described_class.new(dead_player, player_2) }
  let(:player_1) { double :player, hit_points: 50 }
  let(:player_2) { double :player, hit_points: 50 }
  let(:dead_player) {double :player, hit_points: 0 }

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(player_2).to receive(:receive_damage)
  #     game.attack(player_2)
  #   end
  # end

  describe '#player_1'do
    it 'Retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2'do
    it 'Retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'Starts as player 1' do
      expect(game.current_turn).to eql player_1
    end
  end

  describe '#switch_turns' do
    it 'Switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'Finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

  describe '#game_over?' do
    it 'Returns false if no one is at 0HP' do
      expect(game.game_over?).to be false
    end

    it 'Returns true if at least one player is at 0HP' do
      expect(finish_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'Returns a player on less than 0HP' do
      expect(finish_game.loser).to eq dead_player
    end
  end
end
