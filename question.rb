module Number_gen
  def number_gen
    number = rand(1..20)
    number
  end
end

class Question
  attr_reader :number_one, :number_two
  include Number_gen
  def initialize
    @number_one = number_gen
    @number_two = number_gen
  end

  def show_question
    puts "What is #{@number_one} plus #{@number_two}"
  end
end





#Test
p something = Question.new
something.show_question