class Theater < ApplicationRecord
  has_many :shows

  def self.scrape
    puts "4"
  end

end
