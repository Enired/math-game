class Player
  attr_reader = :number_of_lives, :name
  NUMBER_OF_LIVES = 3
  def initialize (name)
    @name = name
    @number_of_lives = NUMBER_OF_LIVES
  end

  def lose_a_life
    @number_of_lives -= 1
  end
end


#TEST
player_1 = Player.new('Player 1')
p player_1
player_1.lose_a_life
p player_1