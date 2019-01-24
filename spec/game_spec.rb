

describe Game do
let(:player1) { double(:player1, hp: 10) }
let(:player2) { double(:player2, hp: 0, name: 'player1') }
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
      expect(game.turn).to eq player2
    end
  end

  describe '#game_over' do
    let(:player3) { double(:player, hp: 10) }
    let(:game2) { Game.new(player1, player3) }

    it 'returns true when game is over' do
      expect(game.game_over).to eq true
    end

    it 'returns false when game isn\'t over' do
      expect(game2.game_over).to eq false
    end

  end

  describe '#print_looser' do

    it 'returns the looser' do
      expect(game.print_looser).to eq 'player1 lost!!'
    end
  end

  

end
