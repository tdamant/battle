feature 'player looses' do
  scenario 'confirmation when a player looses' do
    sign_in_and_play
    11.times { attack }
    expect(page).to have_content 'Mittens lost!!'
  end
end
