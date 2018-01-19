require_relative 'player'

class Game
  attr_reader :player1, :player2, :victim

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @victim = player2
  end

  def attack
    @victim.deduct
  end

  def switch_turn
    @victim == @players[0] ? @victim = @players[1] : @victim = @players[0]
  end

end
