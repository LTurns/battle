require_relative './player.rb'

class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @turn = @player_1
  end

  def attack
    if @turn == @player_1
      @player_2.reduce_points
    else
      @player_1.reduce_points
    end

    switch_turn
  end

  def switch_turn
   if @turn == @player_1
     @turn = @player_2
   else
     @turn = @player_1
   end
 end
end
