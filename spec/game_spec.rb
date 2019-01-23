require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, player_two) }
  let(:player_one) { double(:player, receive_damage: nil ) }
  let(:player_two) { double(:player, receive_damage: nil ) }


  describe '#players' do
    it 'Returns player_one' do
      expect(subject.player_one).to eq player_one
    end
    it 'Returns player_two' do
      expect(subject.player_two).to eq player_two
    end
  end

  describe '#attack' do
  it 'should have an attack method' do
    expect(player_two).to receive(:receive_damage)
    subject.attack(player_two)
    end
  end

  describe '#turn' do
    it 'returns turn' do
      expect(subject.turn).to eq player_one
    end

    it 'switches turn' do
      subject.switch_turn
      expect(subject.turn).to eq player_two
    end

    it 'returns the player whose turn it is not' do
      expect(subject.opponent).to eq player_two
    end

    it 'returns the player whose turn its not, after switching turns' do
      subject.switch_turn
      expect(subject.opponent).to eq player_one
    end
  end
end
