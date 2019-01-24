class Game

  attr_reader :turn

  def self.create(player_one, player_two)
    @game = Game.new(player_one, player_two)
  end

  def self.the_game
    @game
  end

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
    opponent.hit_points <= 0
  end

end
