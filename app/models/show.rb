class Show < ApplicationRecord
  belongs_to :theater

  def self.create_shows_array(show_array)
    binding.pry
    show_array.each {|show| Show.create(show) if show != nil}
  end

  def self.get_shows_by_month(month)
    self.all.select {|i| i.dates.first.mon <= month && i.dates.last.mon >= month}
  end

  def self.get_shows_by_name
    self.all.map {|i| i.name}
  end

  def self.get_shows_by_date_range(date_array)
    self.all.select {|show| (show.dates.first <= date_array[1] && show.dates.first >= date_array[0]) || (show.dates.last >= date_array[0] && show.dates.last <= date_array[1]) || (show.dates.first < date_array[0] && show.dates.last > date_array[1])}
  end

end
