require 'player'

describe Player do

  let(:paul) { described_class.new("Paul") }
  let(:player_double) { double :double, receive_damage: nil }

  describe "#name" do
    it "returns the player name" do
      expect(paul.name).to eq "Paul"
    end
  end

  describe '#hit_points' do
    it 'returns hit points of player' do
      expect(paul.hit_points).to eq Player::HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it "Reduces hit points by #{Player::DEFAULT_ATTACK_VALUE}" do
      expect {paul.receive_damage}.to change{paul.hit_points}.by(-Player::DEFAULT_ATTACK_VALUE)
    end
  end


end
