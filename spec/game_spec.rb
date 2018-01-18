require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2, deduct: nil }
  let(:player_class) { double :player_class }
  subject(:game) { described_class.new }

  describe '#add' do
    it 'adds two players, has a player 1' do
      allow(player_class).to receive(:new).and_return player1
      game.add("Sam", "Roland", player_class)
      expect(game.player1).to eq player1
    end

    it 'adds two players, has a player 2' do
      allow(player_class).to receive(:new).and_return player2
      game.add("Sam", "Roland", player_class)
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'can attack' do
      game.attack(player2)
      expect(player2).to have_received(:deduct)
    end
  end
end
