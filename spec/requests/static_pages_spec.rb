require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_selector('h1', text: 'Sample App') }
		
		
		it { should have_selector('title', text: full_title('')) }
			#Uses have_selector method, which checks for
			#an HTML element (the "selector") 
			#for the given content
		it { should_not have_selector 'title', text: '| Home'}
	end

	describe "Help page" do
		before { visit help_path }

		it "should have the h1 'Help'" do
			page.should have_selector('h1', 
				text: 'Help')
		end
		
		it "should have the title 'Help'" do
			page.should have_selector('title', 
				text: full_title(''))
		end  #:text => "..." syntax is a hash using a symbol
			 #as a key. Content does not need to be an exact match;
			 #any substring will work as well.
			 #for example :text => "| Home" ) will work as well. 
	end

	describe "About page" do
		before { visit about_path }
		
		it "should have the h1 'About Us'" do
			page.should have_selector('h1', 
				text: 'About Us')
		end
		
		it "should have the title 'About Us'" do
			page.should have_selector('title', 
				text: full_title(''))
		end		
	end		

	describe "Contact page" do
		before { visit contact_path }
		
		it "should have the h1 'Contact'" do
			page.should have_selector('h1',
				text: 'Contact')
		end

		it "should have the title 'Contact'" do
			page.should have_selector('title',
				text: full_title(''))
		end				
	end	
end
