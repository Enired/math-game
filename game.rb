require "./turn.rb"
require "./question.rb"

class Game
  attr_accessor :player_1, :player_2, :winner, :game_over
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = 'Nobody'
    @game_over = false
  end

  def start
    current_player = self.player_1
    while player_1.number_of_lives > 0 && player_2.number_of_lives > 0
      question = Question.new
      turn = Turn.new(current_player, question)
      turn.start
      unless player_1.number_of_lives == 0 || player_2.number_of_lives == 0
        self.show_current_score
      end
      if(current_player == self.player_1)
        current_player = self.player_2
      else 
        current_player = self.player_1
      end
    end
    puts "#{current_player.name} wins with a score of #{player_1.number_of_lives}/3"
    puts "----- GAME OVER -----"
  end 

  def show_current_score
    puts "P1: #{self.player_1.number_of_lives}/3 vs P2: #{self.player_2.number_of_lives}/3"
  end

  # def show_final_score
      

  

end