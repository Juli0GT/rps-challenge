require 'game'

describe Game do
  subject(:game) { described_class.new(player_name) }
  let(:player_name) { 'Julio' }

  describe '#name' do
    it 'has a player name' do
      expect(game.player_name).to eq 'Julio'
    end
  end
end
