class Theater < ApplicationRecord
  has_many :shows

  def self.create_theaters
    Theater.destroy_all  # delete this line later

    paramount = Theater.new
    paramount.location = "911 Pine St, Seattle, WA 98101"
    paramount.name = "The Paramount Theater"
    paramount.klass = "Paramount"
    paramount.save
    paramount.updated_at = Time.now.utc - 90000
    paramount.save

    the5th = Theater.new
    the5th.location = "1308 5th Ave, Seattle, WA 98101"
    the5th.name = "The 5th Avenue Theater"
    the5th.klass = "TheFifthAvenueTheater"
    the5th.save
    the5th.updated_at = Time.now.utc - 90000
    the5th.save

    sct = Theater.new
    sct.location = "201 Thomas St, Seattle, WA 98109"
    sct.name = "Seattle Children's Theater"
    sct.klass = "SeattleChildrensTheater"
    sct.save
    sct.updated_at = Time.now.utc - 90000
    sct.save
  end

  def self.find_by_name(name)
    find_by(name: name)
  end

  def self.scrape

  end

  def self.find_by_name(name)
    self.all.detect {|theater| theater.name == name}
  end

  def get_shows_by_name
    shows.map {|show| show.name}
  end

  def get_shows_by_month(month)
    self.shows.map {|show| array << show if show.show_month_includes?(month)}
  end


end


# maybe add find or create theaters so that they don't have to be manually loaded in case of new db?
