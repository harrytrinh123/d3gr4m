module ApplicationHelper
	def avatar_url user
	    return "http://graph.facebook.com/#{user.uid}/picture?type=large" if user.image
	    "user.png"
	 end
end
