require 'spec_helper'

describe "User Pages" do
	subject { page }

	shared_examples_for "all user pages" do
		it { should have_selector('h1', 
				text: heading) }
		it { should have_selector('title', 
				text: full_title(page_title)) }
	end
  describe "signup page" do
  	it "should have the right links on the layout" do
		visit signup_path
			click_link "About"
				should have_selector 'title', text: full_title('About Us')
			click_link "Help"
				should have_selector 'title', text: full_title('Help')
			click_link "Contact"
				should have_selector 'title', text: full_title('Contact')
			click_link "Home"
			click_link "Sign up now!"
				should have_selector 'title', text: full_title('Sign up')
			click_link "sample app"
				should have_selector 'title', text: full_title('')
	end
    it_should_behave_like "all user pages"
    before { visit signup_path }
    	let(:heading) { 'Sign up'}
    	let(:page_title) { '' }
  end
end
