require_relative './player.rb'

class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack
    @player_2.reduce_points
  end
end
