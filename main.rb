require './Math_game.rb'
require './Players.rb'
require './C_players.rb'

p1 = Players.new
p2 = Players.new
current = C_Player.new


loop do
  if p1.life == 0 || p2.life == 0
    puts p1.life == 0 ? "Player 2 wins with a score of #{p2.life}/3" : "Player 1 wins with a score of #{p1.life}/3"
    puts "---- GAME OVER ----"
    puts "Good Bye!"
    exit
  else
    puts "----- NEW TURN ----"
    play = Math_game.new(rand(1..20), rand(1..20), current.c_player)
    p play.game
    answer = $stdin.gets.chomp
  end

  
  if answer.to_i != play.answer
    puts "#{current.c_player}: Seriously? No!"
    current.c_player == "Player 1" ? p2.life = p2.lost_game(p2.life) : p1.life = p1.lost_game(p1.life)
    puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
  else
    puts "#{current.c_player}: YES! You are correct."
    puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
  end

  current.c_player = current.player_change
end