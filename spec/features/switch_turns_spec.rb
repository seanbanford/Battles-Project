feature 'Switch turns' do
  context 'Seeing the current turn' do
    scenario 'At the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Ted's turn"
    end

    scenario 'After player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Ted's turn"
      expect(page).to have_content "Fred's turn"
    end
  end
end
