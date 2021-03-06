require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2, deduct: nil }
  subject(:game) { described_class.new(player1, player2) }

  it 'has a player 1' do
    expect(game.player1).to eq player1
  end

  it 'has a player 2' do
    expect(game.player2).to eq player2
  end

  describe '#attack' do
    it 'can attack' do
      game.attack
      expect(player2).to have_received(:deduct)
    end
  end

  describe '#switch_turn' do
    it 'switches the players\' turns' do
      expect { game.switch_turn }.to change { game.victim }.from(game.player2).to(game.player1)
    end
  end

  describe '#ended?' do
    it 'returns true if the game is over' do
      allow(player1).to receive(:dead?) { true }
      game.end_game
      expect(game.ended?).to eq(true)
    end
  end

  context 'after game is ended' do
    before(:each) do
      allow(player1).to receive(:dead?) { true }
      allow(player2).to receive(:dead?) { false }
      game.end_game
    end

    it 'has a winner' do
      expect(game.winner).to eq player2
    end

    it 'has a loser' do
      expect(game.loser).to eq player1
    end
  end

end
