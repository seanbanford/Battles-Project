feature 'Game over' do
  context 'When player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(50)
#      save_and_open_page
    end

    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Ted loses!'
    end
  end
end
