require 'spec_helper'

feature 'Form input' do
  scenario 'Players can enter name on /form' do
    sign_in_and_play
    expect(page).to have_content "John vs Jane"
  end
end
#
  feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jane: 60HP'
  end
end

feature 'Player 2 attacked' do
  scenario 'Player 1 attack player 2 and show confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "John attacked Jane"
  end
end

feature 'reduce Player 2s HP by 10' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
      expect(page).to have_content 'Jane: 50HP'
    end
  end

  feature 'switch turns' do
    scenario 'change from player_1 to player 2' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Next Player'
      expect(page).to have_content("Turn: Lizzie")
    end
  end 
