require './player'
require 'pp'
require './quiz'
require './decider'

def init
  player1 = Player.new('player1')
  player2 = Player.new('player2')
  decider = Decider.new()
  decider.init(player1,player2)
end

init()

