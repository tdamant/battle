require 'player'

describe Player do
  let(:ross) { Player.new('Ross') }
  let(:player2) { double(:player2)}
 describe 'name method' do
   it 'returns name' do
     expect(ross.name).to eq('Ross')
   end
 end
 describe '#hp' do
   it 'returns players hp' do
     expect(ross.hp).to eq Player::DEFAULT_HP
   end
 end

 describe "#attack" do
   it "tells the player to receive damage" do
     expect(player2).to receive :receive_damage
     ross.attack(player2)
   end
 end

 describe "#receive_damage" do
   it "deducts #{Player::DEFAULT_ATTACK} HP" do
     ross.receive_damage
     expect(ross.hp).to eq (Player::DEFAULT_HP - Player::DEFAULT_ATTACK)
   end
 end
end
