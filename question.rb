module Number_gen
  def number_gen
    number = rand(1..20)
    number
  end
end

class Question
  attr_reader :number_one, :number_two, :answer
  include Number_gen
  def initialize
    @number_one = number_gen
    @number_two = number_gen
    @answer = self.number_one + self.number_two
  end

  def show_question
    "What is #{@number_one} plus #{@number_two}"
  end
end





#Test
# p something = Question.new
# something.show_question