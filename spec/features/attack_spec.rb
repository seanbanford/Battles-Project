
feature 'Attack the other player' do
  scenario 'Player 1 attacking player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Ted attacked Fred'
  end

  scenario 'Being attacked by player 2' do
    sign_in_and_play
    click_button "Attack"
    click_button 'OK'
    click_button "Attack"
    expect(page).to have_content 'Fred attacked Ted'
  end
end

feature 'Attacking reduces HP' do
  scenario 'Reduces player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button 'OK'
    expect(page).not_to have_content 'Fred: 50HP'
    expect(page).to have_content 'Fred: 40HP'
  end

  scenario 'Reduces player 1 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button 'OK'
    click_button "Attack"
    click_button 'OK'
    expect(page).not_to have_content 'Ted: 50HP'
    expect(page).to have_content 'Ted: 40HP'
  end
end
