class Prompt < ApplicationRecord
  has_many :feedbacks

  after_create :set_default

  def set_default
    self.votesA = 0
    self.votesB = 0
  end
end
