class Game
  attr_reader :player1, :player2, :turn, :not_turn
# not turn not tested & attack has smore responsabilities

def initialize(player1, player2)
  @player1 = player1
  @player2 = player2
  @turn = player1
  @not_turn = player2
end

def attack(player)
  player.receive_damage
end

def switch_turn
  if @turn == player1
    @turn = player2
    @not_turn = player1
  else
    @turn = player1
    @not_turn = player2
  end
end

def game_over
  @player1.hp == 0 || @player2.hp == 0
end

def print_looser
  @player1.hp == 0 ? "#{player1.name} lost!!" :  "#{player2.name} lost!!"
end

end
