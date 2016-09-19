require 'rails_helper'

describe 'the prompt' do
  it 'shows all of the prompts on the homepage' do
    FactoryGirl.create(:prompt)
    visit prompts_path
    expect(page).to have_content "steal a plane"
  end
  it 'should allow user to create a new prompt' do
    visit new_prompt_path
    fill_in 'Option A', with: 'walk a tightrope across grand canyon without training'
    fill_in 'Option B', with: 'splunking a mile underground and back without a headlight'
    fill_in 'Author', with: 'Dilly'
    fill_in 'Description', with: 'You can\'t win'
    click_on 'Create Prompt'
    expect(page).to have_content('You can\'t win')
  end
end
