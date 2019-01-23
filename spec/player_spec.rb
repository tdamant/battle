require 'player'

describe Player do
 describe 'name method' do
   it 'returns name' do
     ross = Player.new('Ross')
     expect(ross.name).to eq('Ross')
   end
 end
end
