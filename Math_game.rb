class Math_game
  attr_accessor :num1, :num2, :player

  def initialize(num1, num2, p)
    @num1 = num1
    @num2 = num2
    @player = p
  end

  def game
    "#{player}: What does #{num1} plus #{num2} equal?"
  end

  def answer
    num1 + num2
  end
  
end