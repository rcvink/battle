feature 'end of game' do
  scenario 'Can end the game' do
    sign_in_and_play
    reach_end_of_game
    click_button 'attack'
    expect(page).to have_content 'sam won with 10 health remaining.'
  end
end
