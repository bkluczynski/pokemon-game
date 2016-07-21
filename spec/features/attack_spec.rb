feature "Attack on player", :type => :feature do
  scenario "player 1 attacks player 2 and receives confirmation of attack" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Karol attacked Titus!'
  end
end
