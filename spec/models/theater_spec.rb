require 'rails_helper'

RSpec.describe Theater, type: :model do

  it 'is defined' do
   expect(defined?(Theater)).to be_truthy
   expect(Theater).to be_a(Class)
 end

end
