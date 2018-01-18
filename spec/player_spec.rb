require 'player'

describe Player do
  subject(:player) { described_class.new("Sam") }

  it 'has a name' do
    expect(player.name).to eq "Sam"
  end
end