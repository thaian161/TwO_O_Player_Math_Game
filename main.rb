# Require Class from other files
require './Question'
require './Player'
require './Game'

question = Question.new
player1 = Player.new("Player1")
player2 = Player.new("Player2")
game = Game.new(player1, player2)

#use loop as long as live is more than 0
while player1.live > 0 && player2.live > 0
  # ----Start of loop----
  # generate question
  Question something something

  # player input answer and store as variable
  input = gets.chomp.to_i

  # respond with text correct/wrong
  if input == question.result
    puts "#{who_turn_is_it}: Correct!"
  else
    puts "#{who_turn_is_it}: Seriously??? No :"( !"
  end

  # Print the live
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

  # new turn
  puts "----- NEW TURN -------"

  # Change player
  game.change_player

  # end game if points == 0
  if player1.lives == 0
    puts "Player 2 wins with a live of #{player2.lives}/3"
    puts "----- GAME OVER -------"
  end

  if player2.live == 0
    puts "Player 1 wins with a live of #{player1.lives}/3"
    puts "----- GAME OVER -------"
  end

  puts "Good Bye"

  # ---- end of loop ----