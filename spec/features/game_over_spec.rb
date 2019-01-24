feature 'player looses' do
  scenario 'confirmation when a player looses' do
    sign_in_and_play
    srand(15)
    18.times { attack }
    expect(page).to have_content 'Dave lost!!'
  end
end
