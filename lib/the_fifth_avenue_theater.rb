require 'open-uri'


class TheFifthAvenueTheater < Scraper

  def self.scrape
    begin
      shows = self.scrape_the_5th('https://www.5thavenue.org/boxoffice#current')
      Show.find_or_create_show(shows)
    rescue
      puts "5th Ave is broken. Please open issue at https://github.com/Rygel-XVI/curtain-call-seattle-cli-gem/issues"
    end
  end

  def self.scrape_the_5th(url)
    doc = Nokogiri::HTML(open(url))
    a = doc.css("td .zero, td .guts div")

    the5th = Theater.find_by_name("The 5th Avenue Theater")

    a.map do |i|

      if (i.text !~ /\w/)
        next
      else
        dates = create_dates_5th(i)
        {
          title: i.css("h2 a").text,
          start_date: dates.first,
          end_date: dates.last,
          theater: the5th,
          description: parse_description_5th(i)
        }
      end

    end
  end

  def self.parse_description_5th(i)
    desc = i.css("p")[1].text
    desc.gsub! /\t/, ''
  end


  # takes in an opened url to traverse to the dates. converts the date into a Date object
  def self.create_dates_5th(i)
    d = i.css(".date").text
    d = d.split(/\W{2,}/)
    dates = [d[0] + " " + d[2], d[1] + " " + d[2]]
    y = dates.map {|x| Date.parse(x)}
    (y[0]...y[1])
  end

end
