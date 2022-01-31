module Life
  def lost_game(life)
    life -= 1
  end
end

class Players
  attr_accessor :life
  include Life

  def initialize
    @life = 3
  end

end