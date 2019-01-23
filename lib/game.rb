class Game

  attr_reader :player_one, :player_two, :turn

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @turn = player_one
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

  def switch_turn
    @turn == player_one ? @turn = player_two : @turn = player_one
  end

  def attack(player)
    player.receive_damage
  end

  def opponent
    @players.select {|player| player != @turn }.shift
  end

  def game_over?
    (player_one.hit_points == 0 || player_two.hit_points == 0 ) ? true : false
  end

end
