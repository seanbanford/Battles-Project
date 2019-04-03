feature 'Enter player names' do
  scenario 'Players can enter names and click submit' do
    visit('/')
    fill_in :player_1_name, with: Ted
    fill_in :player_2_name, with: Fred
    click_button 'Submit'
    expect(page).to have_content 'Ted vs. Fred'
  end
end
