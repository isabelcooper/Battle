
feature 'Enter players' do
  scenario 'Should enter player 1 & 2 names' do
    visit '/'
    fill_in 'player_one', with: 'Tom'
    fill_in 'player_two', with: 'Isabel'
    click_button 'Submit'
    expect(page).to have_content ("Tom vs Isabel")
  end
end


    # save_and_open_page
