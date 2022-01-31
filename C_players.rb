class C_Player
  attr_accessor :c_player

  def initialize
    @c_player = "Player 1"
  end

  def player_change
    c_player == "Player 2" ? c_player = "Player 1" : c_player = "Player 2"
    c_player
  end
end