
feature 'setup' do
  scenario 'should load content on page' do
    visit '/'
    expect(page).to have_content ("Testing infrastructure working")
  end

end
