require 'rails_helper'

RSpec.describe Prompt, type: :model do
  it { should have_many :feedbacks }
end
