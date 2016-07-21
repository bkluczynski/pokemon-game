require 'spec_helper'

RSpec.feature "Battle", :type => :feature do
  scenario "returns the hit points of player 2" do
    visit '/'
    fill_in :player1, with: 'John'
    fill_in :player2, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content ("Jane: 60HP")

  end
end
