class Game


  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player)
    player.damage_received
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[-1]
  end

end
