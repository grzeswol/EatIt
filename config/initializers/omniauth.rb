Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, "i0KU4jLYYjWzxpTraWviw", "djMu7QStnBK89MkfIg78tIZ4sFhmGOYjdCjDD0Wsc",
		{
		:secure_image_url => 'true',
		:image_size => 'mini'
	  }
end

