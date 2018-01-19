require_relative 'player'

class Game
  attr_reader :player1, :player2, :victim, :winner, :loser, :ended

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

  def end_game
    # @loser = @victim
    # @player1.dead? ? @winner = @player2 : @winner = @player1
    if @player1.dead?
      @winner = @player2
      @loser = @player1
    elsif @player2.dead?
      @winner = @player1
      @loser = @player2
    end
    @ended = true
  end

  # def ended?
  #   !@winner.nil?
  # end

end
