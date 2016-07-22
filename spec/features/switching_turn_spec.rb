require 'spec_helper'

  describe "switch the turn" do
    scenario "showsh whose turn it is" do
    sign_in_and_play
    expect(page).to have_content("It's Dave's turn")
  end

end
