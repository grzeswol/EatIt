module OmniauthMacros
	def mock_auth_hash
		# The mock_auth configuration allows you to set per-provider (or default)
		# authentication hashes to return during integration testing.
		OmniAuth.config.mock_auth[:twitter] = OmniAuth::Hash.New({
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
end
