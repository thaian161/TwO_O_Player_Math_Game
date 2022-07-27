# 3 Classes

- Player Obj/Class
- Question Obj/Class
- Game Obj/Class
- Main file => to run the game, create new obj for the game

## Player Class

```
class Player

def initialize(player_name)
  attr_accesor :player_name, :lives

  @player_name = player_name
  @lives = 3
 end

end

```

## Question Class

```
class Question
  attr_reader :result

    @num1 = 1 + rand(20) #generate random num from 1 to 20
    @num2 = 1 + rand(20)
    @boolean = true
    @result = @num1 + @num2
  end

  def create_question
    puts "What is #{num1} + #{num2}?"
  end

end
```

## Game Class

```
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
```

## Main file

```
# Require other files

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
end
```
