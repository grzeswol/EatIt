require 'rails_helper'
require 'pp'

RSpec.describe Address, :type => :model do
	describe 'to_s' do
		it 'Prints full address' do
			user = FactoryGirl.create(:user_with_addresses, addresses_count: 1)
			expect(user.addresses.first.to_s).to eq("Line1, Line2, City, Country")
		end
	end

end
