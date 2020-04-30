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
#
  feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/form')
    fill_in :player_1, with: 'John'
    fill_in :player_2, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content 'Jane: 60HP'
  end
end
