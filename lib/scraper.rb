class Scraper

# will be super to the theater scrapers. put similar code here to abstract it out when get to refactor stage

  def self.scrape_theaters
    # for each theater checks if it exists, check when it was last updated if exists, update  if needed
    Theater.all.each do |theater|
      binding.pry
      if ((Time.now.utc - theater.updated_at)/3600) > 24
        create_shows(theater.klass.scrape)
      end
    end

  end

  def self.theater_created?(name)
    # checks if theater exists

  end

  def self.find_or_create_theater(name, address)


  end

  def create_shows_array(shows)
    Show.create_shows_array(shows)
  end

end
