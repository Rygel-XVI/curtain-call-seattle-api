class Theater < ApplicationRecord
  has_many :shows

  def self.scrape
    puts "4"
    byebug
    SeattleChildrensTheater.scrape
  end

  def get_shows_by_name
    shows.map {|show| show.name}
  end

  def self.find_by_name(name)
    @@all.detect {|theater| theater.name == name}
  end

  def get_shows_by_month(month)
    self.shows.map {|show| array << show if show.show_month_includes?(month)}
  end

end
