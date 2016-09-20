require 'rails_helper'

describe 'the prompt' do
  it 'shows all of the prompts on the homepage' do
    FactoryGirl.create(:prompt)
    visit prompts_path
    expect(page).to have_content "steal a plane"
  end
  it 'should allow user to create a new prompt', js: true do
    visit root_path
    click_on 'New'
    fill_in 'Option A', with: 'walk a tightrope across grand canyon without training'
    fill_in 'Option B', with: 'splunking a mile underground and back without a headlight'
    fill_in 'Author', with: 'Dilly'
    fill_in 'Description', with: 'You can\'t win'
    click_on 'Create Prompt'
    expect(page).to have_content('You can\'t win')
  end

  it 'should allow user to delete a prompt' do
    FactoryGirl.create(:prompt)
    visit root_path
    click_on 'Delete'
    expect(page).to have_no_content('Would you rather...')
  end

  it 'should allow a user to see a prompt option' do
    FactoryGirl.create(:prompt)
    visit root_path
    expect(page).to have_content('Option A')
  end
  it 'should allow a user to vote for a prompt option', js: true do
    FactoryGirl.create(:prompt)
    visit root_path
    choose 'vote_Option_A'
    expect(page).to have_content('option a: 1')
  end
  it 'should allow user to search for a prompt', js: true do
    FactoryGirl.create_list(:prompt, 3)
    target = Prompt.first
    not_target = Prompt.last
    visit root_path
    fill_in 'search', with: "#{target.option_a}"
    click_on 'Search'
    expect(page).to have_no_content("#{not_target.option_a}")
  end
end
