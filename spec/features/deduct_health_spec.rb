feature 'deduct health' do
  scenario 'when attacked, player loses 10 health points' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'kwaku health: 90'
  end
end
