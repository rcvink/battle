feature 'Hitpoints' do
  scenario "Player 1 can view Player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'Health: 100'
  end
end
