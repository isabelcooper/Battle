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
    it "Reduces hit points by random_damage" do
      srand(2)
      expect {paul.receive_damage}.to change{paul.hit_points}.by(-9)
    end

    it 'calculates random damage' do
      srand(2)
      expect(paul.random_damage).to eq 9
    end
  end


end
