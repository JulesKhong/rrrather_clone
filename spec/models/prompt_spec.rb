require 'rails_helper'

RSpec.describe Prompt, type: :model do
  it 'sets votes to zero after creation' do
    prompt = FactoryGirl.create(:prompt)
    expect(prompt.votes_a).not_to be_nil
  end
end
