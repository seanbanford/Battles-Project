feature 'View hit points' do
  scenario 'See hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content 'Fred: 50HP'
  end

  scenario 'See hit points of player 1' do
    sign_in_and_play
    expect(page).to have_content 'Ted: 50HP'
  end
end
