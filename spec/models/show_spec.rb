require 'rails_helper'

RSpec.describe Show, type: :model do

  it 'is defined' do
   expect(defined?(Show)).to be_truthy
   expect(Show).to be_a(Class)
 end

end
