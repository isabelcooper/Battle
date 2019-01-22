
feature 'setup' do
  scenario 'should load content on page' do
    visit '/'
    fill_in 'Name', with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content ("Tom")
  end
end
