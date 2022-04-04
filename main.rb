require_relative "./Player"
require_relative "./Question"
require_relative "./Game"

puts "\n----- Welcome! -----"
puts ""
puts "Player 1, What is your name?"
p1name = gets.chomp
p1 = Player.new(p1name)

puts "\nPlayer 2, What is your name?"
p2name = gets.chomp
p2 = Player.new(p2name)

game = Game.new

game.welcome(p1.name, p2.name)

until p1.lives == 0 || p2.lives == 0
  curr_player = game.turn % 2 == 0 ? p2 : p1
  question = Question.new

  question.ask(curr_player, game.turn)
  answer = gets.chomp
  
  puts ""

  if question.verify(answer)
    puts "Correct!"
  else 
    puts "Incorrect, You lose a life!"
    curr_player.lose_life
  end

  if curr_player.is_alive?
    puts ""
    game.status(p1)
    game.status(p2)
  end

  game.increment_turn

end

game.winner(p1.lives > 1 ? p1 : p2)