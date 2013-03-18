module UsersHelper

#returns the Gravatar (http://gravatar.com/) for the 
#given user.
	def gravatar_for(user, size = 100)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end

#returns image tag for the Gravatar with a "gravatar" class
#and alt text = the the user.name