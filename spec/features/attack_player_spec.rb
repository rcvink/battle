feature 'attack player' do
  scenario 'Can attack another player and get confirmation' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'attack confirmed'
  end
end
