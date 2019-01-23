class Player

  DEFAULT_HP = 60
  DEFAULT_ATTACK = 10

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= DEFAULT_ATTACK
  end
end
