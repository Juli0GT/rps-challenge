require 'game'

describe Game do
  subject(:game) { described_class.new(player_name, player_shape, oponent_shape) }
  let(:player_name) { 'Julio' }
  let(:player_shape) { 'scissors' }
  let(:oponent_shape) { 'paper' }

  describe '#player_name' do
    it 'has a player name' do
      expect(game.player_name).to eq 'Julio'
    end
  end

  describe '#player_shape' do
    it 'has a player shape' do
      expect(game.player_shape).to eq 'scissors'
    end
  end

  describe '#oponent_shape' do
    it 'has an oponent shape' do
      expect(game.oponent_shape).to eq 'paper'
    end
  end
end
