class Game
  attr_accessor :player_1, :player_2, :winner, :game_over
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = null
    @game_over = false
  end
end