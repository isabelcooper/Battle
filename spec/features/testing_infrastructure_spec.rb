

feature 'Set up game' do
  scenario 'fill form with names' do
    sign_in_and_play
    expect(page).to have_content ("Tom vs Isabel")
  end
  scenario 'show hit points' do
    sign_in_and_play
    expect(page).to have_content ("Isabel has 60/60 HP")
  end
end

feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content ("Tom attacks Isabel")
  end

end





    # save_and_open_page
