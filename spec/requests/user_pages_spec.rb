require 'spec_helper'


describe "User Pages" do
	subject { page }

	shared_examples_for "all user pages" do
		it { should have_selector('h1', 
				text: heading) }
		it { should have_selector('title', 
				text: full_title(page_title)) }
	end
  	describe "signup" do
  		before { visit signup_path }
  		let(:submit) { "Create my account" }

  		describe "with invalid information" do
  			it "should not create a user" do
  				expect { click_button submit }.not_to change(User, :count)
  			end
  		end

  		describe "with valid information" do
  			before do
  				fill_in "Name", 	with: "Example User"
  				fill_in "Email",	with: "user@example.com"
  				fill_in "Password", with: "foobar"
  				fill_in "Confirmation", with: "foobar"
  			end
  			it "should create a user" do
  			expect { click_button submit }.to change(User, :count).by(1)
  			end
  		end
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

  describe "profile page" do
  	let( :user) { FactoryGirl.create(:user) }
  	#it_should_behave_like "all user pages"
  	before { visit user_path(user) }

  		it { should have_selector('h1', text: user.name) }
  		it { should have_selector('title', text: user.name) }

  end

end
