require 'open-uri'

# make into superclass Scraper with sublclasses for each theater?

# module Scrapers
  class SeattleChildrensTheater

    def self.scrape
      begin
        shows = self.scrape_childrens('http://www.sct.org/onstage/')

        # returns array of shows and theaters. put into new function to save it all
        s = Show.create_shows_array(shows)
        byebug
      rescue
        puts "Childrens Theater is broken. Please open issue at https://github.com/Rygel-XVI/curtain-call-seattle-cli-gem/issues"
      end
    end


    # belongs in the Theater model
    def self.find_or_create_sct
      if (!Theater.find_by(name: "Seattle Children's Theater"))

        sct = Theater.new
        sct.location = "201 Thomas St, Seattle, WA 98109"
        sct.name = "Seattle Children's Theater"
        sct.save

      end

      Theater.find_by(name: "Seattle Children's Theater")
    end



    def self.scrape_childrens(url)
      puts "scrape_childrens"
      begin
        doc = Nokogiri::HTML(open(url))
        puts "opened doc"
        a = doc.css("ul#menu-main-navigation li a")[0]["href"]
        shows_sct('http://www.sct.org/' + a)
      rescue
        puts "scrape childrens not executing"
      end
    end

    def self.shows_sct(url)
      puts "shows_sct"
      begin
        doc = Nokogiri::HTML(open(url))
        a = doc.css("div.season-production-listing div.row-production-listing")

        sct = SeattleChildrensTheater.find_or_create_sct

        a.map{|i|
          dates = create_dates_childrens(i)
          {
          title: i.css("div.col-text a")[0].text,
          start_date: dates.first,
          end_date: dates.last,
          theater: sct,
          description: parse_description_childrens(i.css("div.col-text a")[0]["href"])
        }
      }
      rescue
        puts "shows_sct not functioning"
      end
    end

    def self.parse_description_childrens(url)
      begin
        doc = Nokogiri::HTML(open(url))
        desc = doc.css("meta[name='twitter:description']")[0].attributes["content"].value
      rescue
        puts "sct descriptions not functioning"
      end
    end


# takes in an opened url to traverse to the dates. converts the date into a Date object
    def self.create_dates_childrens(i)
      begin
        d = i.css("div.col-text div.dates").text
        d = d.split (/-|,\s/)
        dates = [d[0] + " " + d[2], d[1] + " " + d[2]]
        y = dates.map {|x| Date.parse(x)}
        (y[0]...y[1])
      rescue
        puts "sct date creation not funcitoning"
      end
    end

  end
# end
