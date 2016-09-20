class Prompt < ApplicationRecord
  has_many :feedbacks

  after_create :set_default

  def set_default
    self.votes_a = 0
    self.votes_b = 0
    self.save
  end

  def self.search(search)
    if search
      where('option_a LIKE ? OR option_b LIKE ?', "%#{ search }%", "%#{ search }%" )
    else
      all
    end
  end
end
