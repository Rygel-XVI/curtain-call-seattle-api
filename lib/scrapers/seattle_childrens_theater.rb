require 'open-uri'

module Scrapers
  class SeattleChildrensTheater

    def self.scrape
      begin
        sct = self.scrape_childrens('http://www.sct.org/onstage/')
        Show.create_shows_array(sct)
      rescue
        puts "Childrens Theater is broken. Please open issue at https://github.com/Rygel-XVI/curtain-call-seattle-cli-gem/issues"
      end
    end

    def self.scrape_childrens(url)
      begin
        doc = Nokogiri::HTML(open(url))
        a = doc.css("ul#menu-main-navigation li a")[0]["href"]
        shows_sct('http://www.sct.org/' + a)
      rescue
        puts "scrape childrens not executing"
      end
    end

    def self.shows_sct(url)
      begin
        doc = Nokogiri::HTML(open(url))
        a = doc.css("div.season-production-listing div.row-production-listing")

        sct = Theater.new
        sct.location = "201 Thomas St, Seattle, WA 98109"
        sct.name = "Seattle Children's Theater"

        a.map{|i|
          {
          name: i.css("div.col-text a")[0].text,
          dates: create_dates_childrens(i),
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
end
