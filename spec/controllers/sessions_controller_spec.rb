require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
	before do
		request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter] 
		OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
			'provider' => 'twitter',
			'uid' => '123545',
			'user_info' => {
				'name' => 'mockuser',
			},
			'credentials' => {
				'token' => 'mock_token',
				'secret' => 'mock_secret'
			}
		})

  end

	it "should successfully create a user" do
      expect {
        post :create, provider: :twitter
      }.to change{ User.count }.by(1)
    end

end
