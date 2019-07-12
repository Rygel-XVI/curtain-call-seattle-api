require 'rails_helper'

RSpec.describe Show, type: :model do

  it 'is defined' do
   expect(defined?(Show)).to be_truthy
   expect(Show).to be_a(Class)
 end

 it 'has a title and description' do
   s1 = Show.new(title: "New Show 1", description: "Description 1")
   expect(s1.title).to eq("New Show 1")
   expect(s1.description).to eq("Description 1")
 end

 it 'has a start and end date' do
   s1 = Show.new(title: "New Show 1", description: "Description 1")
   s1.start_date = Date.new(2014, 2, 12)
   s1.end_date = Date.new(2015,1,10)
   expect(s1.start_date).to be_a(Date)
   expect(s1.end_date).to be_a(Date)
 end

# things to do
  # build out hashes to test self.find_or_create_show *** priority
  # build out tests for fetching shows by attributes after

end
