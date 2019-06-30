class Theater < ApplicationRecord
  has_many :shows

  def self.scrape
    byebug
  end

end
