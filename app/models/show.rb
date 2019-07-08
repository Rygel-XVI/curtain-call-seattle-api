class Show < ApplicationRecord
  belongs_to :theater


# need to change this so it only creates a new show if it doesn't already exist
  def self.create_show_if_needed(show_array)
    binding.pry
    show_array.each do |show|
      # if can query by name, theater do nothing
      # dates can be added later if necessary depending on how long we keep data in the db...
    end
  end

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
