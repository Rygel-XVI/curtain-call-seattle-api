class TheaterController < ApplicationController

  def index
    theaters = Theater.all
    byebug
    render json: theaters
  end

# creates new scraper and scrapes the specified theater IF ti has not been updated this day.
  def update
    # binding.pry
    # check_update_theater = Theater.all.first
    # if !!check_update_theater
    # end
  end

private

  def needs_update?
    if (Theater.all.size < 1 || enough_time_passed?)
      puts "needs_update"
    end
  end

  def enough_time_passed?
    t = (Time.now - Theater.all.first.last_updated)/3600
    t > 24
  end

end
