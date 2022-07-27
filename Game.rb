class Game

  attr_reader :player1, :player2, :who_turn_is_it
 
 def initialize ()
   @player1 = Player.new("Player 1")
   @player2 = Player.new("Player 2")
   @who_turn_is_it = @player1
 end
 
 def live_tracking
   if true then keep the live
   if fale then @who_turn_is_it.lives - 1
 end
 
 def change_player
     if @who_turn_is_it == @players[0]
       @who_turn_is_it = @players[1]
     elsif
       @who_turn_is_it = @players[0]
     end
   end