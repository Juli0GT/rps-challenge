require 'spec_helper'

feature 'register player' do
  scenario 'register and see my name' do
    visit '/'
    fill_in 'name', with: 'Julio'
    click_button 'Submit'
    expect(page).to have_content 'Julio'
  end
end
