class Game
  attr_reader :turn

  def initialize
    @turn = 1
  end

  def increment_turn
    @turn += 1
  end

  def status(player)
    puts "#{player.name} has #{player.lives} lives left!"
  end

  def winner(player)
    puts "\n#{player.name} is the winner with #{player.lives} lives remaining!"
  end

  def welcome(p1name, p2name)
    puts "\nWelcome #{p1name} and #{p2name}!"
    puts "\nThis is a game of addition and attrition..."
    puts "\nYou each start with three lives, answer a question inccorectly and lose a life."
    puts "\n ----- NOW LET'S BEGIN -----"
    puts ""
  end
end