feature 'Enter names' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
