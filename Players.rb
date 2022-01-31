class Players
  attr_accessor :c_player
  def initialize
    @c_player = "Player 2"
  end

  def current_player
    c_player == "Player 2" ? c_player = "Player 1" : c_player = "Player 2"
    c_player
  end
end