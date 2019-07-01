class TheaterController < ApplicationController

  def index
    theaters = Theater.all
    byebug
    render json: theaters
  end

# creates new scraper and scrapes the specified theater IF ti has not been updated this day.
# this should all be first call when app loads
  def scrape
    update_db_if_needed
  end

  private

  def update_db_if_needed
    if needs_update?
      Theater.scrape
    end
  end

  def needs_update?
    if (Theater.all.size < 1 || enough_time_passed?)
      puts "needs_update"
    end
  end

  def enough_time_passed?
    puts "time"
    t = (Time.now - Theater.all.first.last_updated)/3600
    t > 24
  end

end
