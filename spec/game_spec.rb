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

  context 'game ended' do
    subject(:win_game) { game }
    subject(:lose_game) { described_class.new(lose_options) }
    subject(:draw_game) { described_class.new(draw_options) }

    let(:lose_options) { {'player_name' => 'Julio', 'player_shape' => :scissors, 'opponent_shape' => :rock} }
    let(:draw_options) { {'player_name' => 'Julio', 'player_shape' => :scissors, 'opponent_shape' => :scissors} }

    describe '#win?' do
      it 'returns true if player shape is scissors and opponent shape is paper' do
        expect(win_game.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player shape is scissors and opponent shape is paper' do
        expect(lose_game.lose?).to eq true
      end
    end
  end
end
