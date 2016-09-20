require 'rails_helper'

RSpec.describe Prompt, type: :model do
  it 'sets votes to zero after creation' do
    prompt = FactoryGirl.create(:prompt)
    expect(prompt.votes_a).not_to be_nil
  end

  it 'sorts results based on the search bar' do
    FactoryGirl.create(:prompt)
    target =  FactoryGirl.create(:prompt)
    FactoryGirl.create(:prompt)
    results = Prompt.search(target.option_a).first
    expect(results.option_a).to eq(target.option_a)
  end
end
