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

 describe "#receive_damage" do
   it "deducts specified amount of HP" do
     ross.receive_damage(5)
     expect(ross.hp).to eq (Player::DEFAULT_HP - 5)
   end
 end
end
