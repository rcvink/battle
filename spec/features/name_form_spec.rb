feature 'Name form' do
  scenario 'user enters name in form and it appears on screen' do
    sign_in_and_play
    expect(page).to have_content 'sam vs kwaku'
  end
end
