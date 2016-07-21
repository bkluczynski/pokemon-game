require 'spec_helper'

RSpec.feature "Battle", :type => :feature do
  scenario "Enter player names" do
    visit '/'
    # fill_in 'names', with: 'John'
    # click_button 'Submit'
    # expect(page).to have_text('John')
    fill_in :player1, with: 'John'
    fill_in :player2, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content 'John V. Jane'

  end
end
