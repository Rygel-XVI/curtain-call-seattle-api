class TheaterController < ApplicationController

  def index
    theaters = Theater.all
    byebug
    if theaters.size < 1
      Theater.scrape
    end

    render json: theaters
  end

# creates new scraper and scrapes the specified theater IF ti has not been updated this day.
  def update
    # binding.pry
    # check_update_theater = Theater.all.first
    # if !!check_update_theater
    # end
  end





end
