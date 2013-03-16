require 'spec_helper'

describe ApplicationHelper do #direct tests the ApplicationHelper in app/helpers
							  #directory, below is the test for it 
	
	describe "full_title" do
		it "should include the page title" do
			full_title("foo").should =~ /foo/
		end

		it "should include the base title" do
			full_title("foo").should =~ /^Ruby on Rails Tutorial Sample App/
		end

		it "should not include a bar for the home page" do
			full_title("").should_not =~ /\|/
		end
	end
end
