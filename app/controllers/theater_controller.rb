class TheaterController < ApplicationController

  def index
    theaters = Theater.all
    byebug
    render json: theaters
  end

# creates new scraper and scrapes the specified theater IF ti has not been updated this day.
# this should all be first call when app loads
#   change back to update later so it matches proper conventions
  def scrape
    Scraper.scrape_theaters
  end

  private

# not needed Scraper calls it atm
#   def update_db_if_needed
#     if needs_update?
#       puts "3"
#     end
#   end
#
#   def needs_update?
#     if (Theater.all.size < 1 || enough_time_passed?)
#       puts "2"
#       return true
#     end
#     return false
#   end
#
#   def enough_time_passed?
#     puts "1"
#     t = (Time.now - Theater.all.first.last_updated)/3600
#     t > 24
#   end


end
