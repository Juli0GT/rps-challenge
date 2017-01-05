require 'spec_helper'

feature 'playing a game' do

  before do
    visit '/'
    fill_in 'name', with: 'Julio'
    click_button 'Submit'
  end

  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose rock' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end


  scenario 'player choose rock and opponent chose different ' do
    srand(9000)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Rock!'
  end

  context 'end game' do
    before do
      srand(9000)
    end

    scenario 'I win' do
      click_button 'Paper'
      expect(page).to have_content 'You win!'
    end

    scenario 'I lose' do
      click_button 'Scissors'
      expect(page).to have_content 'You lose!'
    end

    scenario 'I draw' do
      click_button 'Rock'
      expect(page).to have_content 'You draw!'
    end
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
  end
end
