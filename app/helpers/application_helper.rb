module ApplicationHelper

	#Returns the full title on a per-page basis.
	def full_title(page_title) #aka method 
		#full_title class with a page_title argument
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty? #if argument in nil
			base_title #return base_title
		else #if argument != nil
			"#{base_title} | #{page_title}"
			#return base_title & page_title (with | seperator)
		end
	end	
	
end

#we'll define a custom helper called full_title
	#full_title helper returns a base title, "Ruby on Rails
	#Tutorial Sample App" if not page title is defined, and
	#adds a vertical bar followed by the page title if one is 
	#defined

	# If a help