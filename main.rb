require "./game.rb"
require "./player.rb"

player_one = Player.new('Player 1')
player_two = Player.new('Player 2')

new_game = Game.new(player_one, player_two)
new_game.start