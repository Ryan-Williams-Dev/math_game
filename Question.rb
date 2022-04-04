class Question
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask(player, turn)
    puts "\n----- Question #{turn} -----"
    puts "\n#{player.name}, what is #{@num1} + #{@num2}?"
  end

  def verify(answer)
    answer.to_i == @answer
  end

end