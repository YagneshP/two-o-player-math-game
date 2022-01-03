require './player'
require 'pp'
require './quiz'
require './Game'

def init
  player1 = Player.new('player1')
  player2 = Player.new('player2')
  game = Game.new()
  game.init(player1,player2)
end

init()

