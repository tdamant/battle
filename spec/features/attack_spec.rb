feature 'Attacking' do
  scenario 'attack player 2' do
    # srand(15) means rand(0..10) returns 8
    srand(15)
    sign_in_and_play
    attack
    expect(page).to have_content 'Mittens: 52HP'
  end
end
