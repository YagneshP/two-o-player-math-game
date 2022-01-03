class Quiz
  @@randomNumber1 = rand(1..20)
  @@randomNumber2 = rand(1..20)
  def generateQuestion
    puts "What does #{@@randomNumber1} plus #{@@randomNumber2} equal?"
  end
  def correctAnswer
    @@randomNumber1 + @@randomNumber2
  end
end