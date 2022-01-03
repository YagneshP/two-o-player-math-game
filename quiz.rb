class Quiz
  attr_reader :randomNumber1, :randomNumber2
  def initialize
    @randomNumber1 = rand(1..20)
    @randomNumber2 = rand(1..20)
  end
  def generateQuestion(player_name)
    puts "#{player_name} :What does #{@randomNumber1} plus #{@randomNumber2} equal?"
  end
  def correctAnswer
    @randomNumber1 + @randomNumber2
  end
end