class Game
attr_reader :player1, :player2
# not turn not tested & attack has smore responsabilities

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

def initialize(player1, player2)
  @player1 = player1
  @player2 = player2
  @players = [player1, player2]
end

def attack(player)
  player.receive_damage
end

def turn
  @players.first
end

def not_turn
  @players.last
end

def switch_turn
  @players.rotate!
end

def game_over
  @player1.hp == 0 || @player2.hp == 0
end

def print_looser
  @player1.hp == 0 ? "#{player1.name} lost!!" :  "#{player2.name} lost!!"
end

end
