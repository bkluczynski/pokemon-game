require 'spec_helper'

RSpec.feature "Battle", :type => :feature do
  scenario "Enter player names" do
    visit '/'
    # fill_in 'names', with: 'John'
    # click_button 'Submit'
    # expect(page).to have_text('John')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content 'John V. Jane'

  end
end
