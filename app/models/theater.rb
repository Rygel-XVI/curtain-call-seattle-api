class Theater < ApplicationRecord
  has_many :shows

  def self.scrape
    puts "4"
    byebug
  end

end
