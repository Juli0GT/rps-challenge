require 'game'

describe Game do
  subject(:game) { described_class.new(game_options) }
  let(:game_options) { {'player_name' => 'Julio', 'player_shape' => :scissors, 'opponent_shape' => :paper} }

  describe '#player_name' do
    it 'has a player name' do
      expect(game.player_name).to eq 'Julio'
    end
  end

  describe '#player_shape' do
    it 'has a player shape' do
      expect(game.player_shape).to eq :scissors
    end
  end

  describe '#opponent_shape' do
    it 'has an opponent shape' do
      expect(game.opponent_shape).to eq :paper
    end
  end
end
