require 'rails_helper'

RSpec.describe User, :type => :model do
	describe "find or create by auth_data" do
		it "finds or creates new user" do
			auth_data = {}
			expect(User.find_or_create_by_auth(auth_data)).to eq("Sample Name")
		end
	end
end
