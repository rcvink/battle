require 'player'

describe Player do
  subject(:player) { described_class.new("Sam") }
  let(:player2) { double :player2, deduct: nil }

  it 'has a name' do
    expect(player.name).to eq "Sam"
  end

  it 'has a health score' do
    expect(player.health).to eq 100
  end

  describe '#deduct' do
    it 'reduces health by 10 points' do
      expect(player.deduct).to eq 90
    end
  end

  describe '#dead?' do
    it 'returns true when the player\'s health is 0' do
      # allow(player).to receive(:health).and_return(0)
      10.times { player.deduct }
      expect(player.dead?).to be(true)
    end
  end

end
