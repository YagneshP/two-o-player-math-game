require './quiz'
require 'pp'
# more generic name?? like game
class Game
  @@current_player
  @@player1
  @@player2
  def checkAnswer(answer, correctAnswer)
    #get the input from user and compare with correctAnswer method
    if answer == correctAnswer
      puts "Yes! You are correct."
      check_life()
    else
      puts "Seriously ? No!"
      # change life of the player
      @@current_player.change_life()
      # check life
      check_life()
    end
  end
  # def change_life(player)
  #   player.life -= 1
  # end
  def check_life
    # after check the answer check the life
    # if life 0
    if @@player1.life == 0
      #-- Game Over ---
      puts "Player 2 wins with score of #{@@player2.life}/3"
      puts "--- Game Over ---"
      puts " Good Bye! "
    elsif @@player2.life == 0
      #-- Game Over ---
      puts "Player 1 wins with score of #{@@player1.life}/3"
      puts "--- Game Over ---"
      puts " Good Bye! "
    else 
      # else
      puts "P1 : #{@@player1.life}/3 vs P2 : #{@@player2.life}/3"
      #-- New turn ---
      puts "--- New Turn ---"
      change_player()
      ask_question()
    end
  end
  def change_player
    #set current player 
    if @@current_player == @@player1
      @@current_player = @@player2
    else
      @@current_player = @@player1
    end
  end
  def ask_question
    question = Quiz.new()
    question.generateQuestion(@@current_player.name)
    answer = gets.chomp.to_i
    self.checkAnswer(answer, question.correctAnswer())
  end


  def init(player1, player2)
    @@player1 = player1
    @@player2 = player2
    @@current_player = player1
    ask_question()
  end
end
