feature 'Attacking' do

 scenario 'reduce Player 2 HP by 10 points' do
   sign_in_and_play
   click_button 'Attack'
   expect(page).not_to have_content('60HP')
   expect(page).to have_content('50HP')
 end
end
