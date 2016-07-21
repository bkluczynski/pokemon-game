feature "Switch Turns" do
  context "seeing the current turn" do
    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content "It is Karol's turn"
    end

    scenario "after player 1 attacks" do
      sign_in_and_play
      click_button 'Attack!'
      click_button 'Switch Player'
      expect(page).not_to have_content "It is Karol's turn"
      expect(page).to have_content "It is Titus's turn"
    end
  end

end
