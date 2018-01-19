def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'sam'
  fill_in :player_2_name, with: 'kwaku'
  click_button 'submit'
end

def reach_end_of_game
  18.times do
    click_button 'attack'
    click_button 'next turn'
  end
end
