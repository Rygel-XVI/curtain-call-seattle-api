require 'open-uri'

# make into superclass Scraper with sublclasses for each theater?

# module Scrapers
  class Paramount

    def self.scrape

      begin
        shows = self.scrape_paramount('https://seattle.broadway.com/')
        Show.create_shows_array(shows)
      rescue
        puts "Paramount Theater is broken. Please open issue at https://github.com/Rygel-XVI/curtain-call-seattle-cli-gem/issues"
      end

    end


    # belongs in the Theater model
    def self.find_or_create_paramount
      if (!Theater.find_by(name: "The Paramount Theater"))

        paramount = Theater.new
        paramount.location = "911 Pine St, Seattle, WA 98101"
        paramount.name = "The Paramount Theater"
        paramount.save

      end

      Theater.find_by(name: "The Paramount Theater")
    end


    def self.scrape_paramount(url)
      begin
        doc = Nokogiri::HTML(open(url))
        a = doc.css(".engagement-card__title")

        parmount = Paramount.find_or_create_paramount

        a.map do |i|
          show_url = i.children[0].values[0]
          scrape_paramount_show(show_url, paramount)
        end
      rescue
        puts "scrape_paramount broken"
      end
    end

    def self.scrape_paramount_show(url, paramount)
      doc = Nokogiri::HTML(open(url))
      # binding.pry
      {
      name: doc.css(".engagement-card__content .engagement-card__title").text,
      dates: create_dates_paramount(doc.css(".engagement-card__content .engagement-card__performance-dates").text),
      description: doc.css(".accordion__panel p").text,
      theater: paramount
    }
    end

    # takes in an opened url to traverse to the dates. converts the date into a Date object
    # add filter for data-engagement-filter-series   to determine what year should be appended
    def self.create_dates_paramount(i)
      begin
        dates = i.scan(/[a-zA-Z]{3,}\s[0-9]+/)
        y = dates.map {|x| Date.parse(x)}
(y[0]...y[1])
      rescue
        puts "dates_paramount not working"
      end
    end


  end
# end
