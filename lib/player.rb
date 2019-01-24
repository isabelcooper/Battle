class Player
  attr_reader :name, :hit_points
  HIT_POINTS = 60
  DEFAULT_ATTACK_VALUE = 10

  def initialize(name)
    @name = name
    @hit_points = HIT_POINTS
  end

  def receive_damage
    @hit_points -= random_damage || DEFAULT_ATTACK_VALUE
  end


  def random_damage
    rand(1..30)
  end



end
