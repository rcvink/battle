class Player
  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def deduct
    @health -= 10
  end

end
