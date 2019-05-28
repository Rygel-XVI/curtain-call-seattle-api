require 'rails_helper'

RSpec.describe Theater, type: :model do

  it 'is defined' do
   expect(defined?(Theater)).to be_truthy
   expect(Theater).to be_a(Class)
 end

 it 'has a location and name' do
   t1 = Theater.new(name: "Paramount", location: "in seattle")
   expect(t1.name).to eq("Paramount")
   expect(t1.location).to eq("in seattle")
 end

end
