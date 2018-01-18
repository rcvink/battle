def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'sam'
  fill_in :player_2_name, with: 'kwaku'
  click_button 'submit'
end
