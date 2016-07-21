feature "Attack on player", :type => :feature do
  scenario "player 1 attacks player 2 and receives confirmation of attack" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Karol attacked Titus!'
  end

  scenario "player 2 is attacked and loses 10 HP" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Titus now has 50 HP'
  end
end
