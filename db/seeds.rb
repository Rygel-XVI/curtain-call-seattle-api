# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t1 = Theater.new
t1.name = "Test Theater 1"
t1.location = "51 Pike St"
t1.save

t2 = Theater.new
t2.name = "Test Theater 2"
t2.location = "76 Stevens Ave"
t2.save

s1 = Show.new
s1.title = "Show 1 Title"
s1.description = "Show 1 Description"
s1.start_date = Date.new(2014, 2, 12)
s1.end_date = Date.new(2014, 5, 17)
s1.save

s2 = Show.new
s2.title = "Show 2 Title"
s2.description = "Show 2 Description"
s2.start_date = Date.new(2015, 3, 12)
s2.end_date = Date.new(2015, 5, 31)
s2.save

s3 = Show.new
s3.title = "Show 3 Title"
s3.description = "Show 3 Description"
s3.start_date = Date.new(2015, 9, 12)
s3.end_date = Date.new(2015, 10, 31)
s3.save

s4 = Show.new
s4.title = "Show 4 Title"
s4.description = "Show 4 Description"
s4.start_date = Date.new(2018,12, 1)
s4.end_date = Date.new(2019, 5, 17)
s4.save

t1.shows << s1
t1.shows << s3
t1.shows << s4

t2.shows << s2
