class Theater < ApplicationRecord
  has_many :shows

  def self.scrape
    puts "here"
  end

end
