require './player'
require 'pp'

def init
  player1 = Player.new('player1')
  player2 = Player.new('player2')

  pp player1
  pp player2
end

init()

