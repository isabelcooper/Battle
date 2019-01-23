class Player
  attr_reader :name, :hit_points
  HIT_POINTS = 60
  DEFAULT_ATTACK_VALUE = 10

  def initialize(name)
    @name = name
    @hit_points = HIT_POINTS
  end

  def receive_damage
    @hit_points -= DEFAULT_ATTACK_VALUE
  end

end
