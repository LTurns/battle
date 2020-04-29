require 'spec_helper'

feature 'Form input' do
  scenario 'Players can enter name on /form' do
    visit('/form')
    fill_in :player_1, with: 'John'
    fill_in :player_2, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content "John vs Jane"
  end
end

feature 'Player 2 Score' do
  scenario 'Player 1 can see Player 2 Hit Points' do
    visit('/points')
    # click_button 'Hit_Points'
    expect(page).to have_content "Hitpoints: 5"
  end
end
