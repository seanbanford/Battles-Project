feature 'Enter player names' do
  scenario 'Players can enter names and click submit' do
    sign_in_and_play
    expect(page).to have_content 'Ted vs. Fred'
  end
end
