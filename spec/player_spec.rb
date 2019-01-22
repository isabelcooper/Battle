require 'player'

describe Player do
  describe "#name" do
    it "returns the player name" do
      paul = Player.new("Paul")
      expect(paul.name).to eq "Paul"
    end
  end
end
