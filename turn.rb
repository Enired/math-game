class Turn
  attr_accessor :player, :question

  def initialize(player, question)
    @player = player
    @question = question
  end

  def start
    player_name = self.player.name
    puts "----- NEW TURN -----"
    puts "#{player_name}: #{question.show_question}"  
    print "> "
    if self.check_answer
      puts "#{player_name}: Correct."
    else 
      puts "#{player_name}: Incorrect"
    end
  end

  def check_answer
    answer = gets.chomp.to_i
    if answer == question.answer
      return true
    else
      self.player.lose_a_life
      return false
    end
  end
end