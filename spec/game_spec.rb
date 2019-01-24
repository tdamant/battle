

describe Game do
let(:player1) { double(:player1) }
let(:player2) { double(:player2) }
let(:game) { Game.new(player1, player2) }

describe 'game start' do
  it 'has a player 1' do
    expect(game.player1).to eq(player1)
    end
  it "has a player 2" do
    expect(game.player2).to eq(player2)
    end
  it "has a turn player" do
    expect(game.turn).to eq player1
  end
  it "has a not turn player" do
    expect(game.not_turn).to eq player2
  end
end

  describe '#attack' do
    it "tells a player to take damage" do
      expect(player2).to receive :receive_damage
      game.attack(player2)
    end
  end

  describe '#switch_turn' do
    it 'switches the player turns' do
      game.switch_turn
      expect(game.turn).to eq(player2)
    end
  end

end
