require 'player'

class Game
  attr_reader :player1, :player2

  def add(player_1_name, player_2_name, player_class = Player)
    @player1 = player_class.new(player_1_name)
    @player2 = player_class.new(player_2_name)
  end

  def attack(target)
    target.deduct
  end
end
