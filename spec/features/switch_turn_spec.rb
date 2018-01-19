feature 'switch turn' do

  scenario 'the turn is switched after an attack' do
    sign_in_and_play
    click_button 'attack'
    click_button 'next turn'
    click_button 'attack'
    expect(page).to have_content("sam health: 90")
  end

end
