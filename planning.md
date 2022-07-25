# nouns

- game
- player
- turn
- question

# behaviour and state / roles
## game
  - the game will declare whether a question was correct/incorrect
  - the game will declare whose turn it is.
  - the game will output the current score after every turn 
  - the game ends when one player has 0 lives
  - the game will declare a winner after the game has concluded.  
    - this class is where the game loop will take place using turn objects 

  - `State: game_over? true or false`
  - `Behaviour: set_game_over`

## player
  - each player has 3 lives
    - answering a math question wrong causes a player to lose 1 life.
  - `State: name_of_player (ex. 'Player 1'), number_of_lives`
  - `Behaviour: return player_name ,decrement number_of_lives`

## turn
  - each player takes a turn answering a question
    - wait for input `gets.chomp`
  - on their turn a player will answer the math question  
    - `State: whose turn it is currently, current turn number`
    - `Behaviour: Change the value of current_player_turn, increment turn number`
## question
  - each question is a math question 
    - each question uses 2 numbers
      - the numbers are between 1 and 20
  - `State: number_1, number_2, answer`
  - `Behaviour