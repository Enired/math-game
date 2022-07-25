require "./turn.rb"
require "./question.rb"

class Game
  attr_reader :player_one, :player_two, :winner
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @winner = 'Nobody'
  end

  def start
    current_player = self.player_one
    while player_one.number_of_lives > 0 && player_two.number_of_lives > 0
      question = Question.new
      turn = Turn.new(current_player, question)
      turn.start
      unless player_one.number_of_lives == 0 || player_two.number_of_lives == 0
        self.show_current_score
      end
      if(current_player == self.player_one)
        current_player = self.player_two
      else 
        current_player = self.player_one
      end
    end
    self.show_final_score(current_player)
    
  end 

  def show_current_score
    puts "P1: #{self.player_one.number_of_lives}/3 vs P2: #{self.player_two.number_of_lives}/3"
  end

  def show_final_score(current_player)
    puts "#{current_player.name} wins with a score of #{current_player.number_of_lives}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end
      

  

end