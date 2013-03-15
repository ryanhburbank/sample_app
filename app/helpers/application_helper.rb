module ApplicationHelper #module provides way to package together
						 #related methods, which can be mixed in to Ruby classes
						 #using include, when writing ordinary ruby, you often
						 #write modules and include them explicitly yourself
						 #but in the case of a helper modeule rails handles the
						 #inclusion, which results in full_title method being
						 #available in all our views. 

	#Returns the full title on a per-page basis.
	def full_title(page_title) #method definition
		#full_title class with a page_title argument
		base_title = "Ruby on Rails Tutorial Sample App" #variable assignment
		if page_title.empty? #if argument in nil #boolean test
			base_title #return base_title #implicit return
		else #if argument != nil
			"#{base_title} | #{page_title}" #string interpolation
			#return base_title & page_title (with | seperator)
		end
	end	
	
end

#we'll define a custom helper called full_title
	#full_title helper returns a base title, "Ruby on Rails
	#Tutorial Sample App" if not page title is defined, and
	#adds a vertical bar followed by the page title if one is 
	#defined

	