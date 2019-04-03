feature 'View hit points' do
  scenario 'See hit points of player 2' do
    visit('/')
    fill_in :player_1_name, with: 'Ted'
    fill_in :player_2_name, with: 'Fred'
    click_button 'Submit'
    expect(page).to have_content 'Fred: 50HP'
  end
end
