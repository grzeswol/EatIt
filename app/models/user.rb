class User < ActiveRecord::Base
	has_many :orders
	has_many :addresses

	def self.find_or_create_by_auth(auth_data)
		User.find_or_create_by(provider: auth_data["provider"], uid: auth_data["uid"]) do |user|
			user.name = auth_data["info"]["name"]
			user.image = auth_data["info"]["image"]
		end
	end
end
