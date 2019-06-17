class TheaterController < ApplicationController

  def index
    theaters = Theater.all
    render json: theaters
  end

# creates new scraper and scrapes the specified theater
  def update

  end

end
