feature "View hit points" do
  scenario "displays the hitpoints for Player 2" do
    sign_in_and_play
    expect(page).to have_content("Titus: 60HP" )
  end
  scenario "displays the hitpoints for Player 1" do
    sign_in_and_play
    expect(page).to have_content("Karol: 60HP" )
  end
  scenario "it prints out the message that you've lost in case the HP is 0 " do
    sign_in_and_play
    11.times do
      click_button 'Attack!'
      click_button 'Switch Player'
    end
    expect(page).to have_content("You've lost!")
  end


end
