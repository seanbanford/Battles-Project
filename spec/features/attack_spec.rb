feature 'Attack the other player' do
  scenario 'Player 1 attacking player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Ted attacked Fred'
  end
end

feature 'Attacking reduces HP' do
  scenario 'Reduces player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    clink_link 'OK'
    expect(page).not_to have_content 'Fred: 50HP'
    expect(page).to have_content 'Fred: 40HP'
  end
end
