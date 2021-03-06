require 'open-uri'

  class Paramount < Scraper

    def self.scrape

      begin
        shows = self.scrape_paramount('https://seattle.broadway.com/')
        Show.find_or_create_show(shows)
      rescue
        puts "Paramount Theater is broken. Please open issue at https://github.com/Rygel-XVI/curtain-call-seattle-cli-gem/issues"
      end

    end


    def self.scrape_paramount(url)
      begin
        doc = Nokogiri::HTML(open(url))
        a = doc.css(".engagement-card__title")

        paramount = Theater.find_by_name("The Paramount Theater")

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
      dates = create_dates_paramount(doc.css(".engagement-card__content .engagement-card__performance-dates").text)

      {
      title: doc.css(".engagement-card__content .engagement-card__title").text,
      start_date: dates.first,
      end_date: dates.last,
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
