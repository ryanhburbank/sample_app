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

        describe "after submission" do
          before { click_button submit }

          it { should have_selector('title', text: 'Sign up')}
          it { should have_content('The form contains 6 errors.')}
          it { should have_content('Password can\'t be blank')}
          it { should have_content('Name can\'t be blank')}
          it { should have_content('Email can\'t be blank')}
          it { should have_content('Email is invalid')}
          it { should have_content('Password can\'t be blank')}
          it { should have_content('Password is too short (minimum is 6 characters)')}
          it { should have_content('Password confirmation can\'t be blank')}
          it { should have_selector('div.alert.alert-error', text: 'Invalid signup, please try again') }
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

        describe "after saving the user" do
          before { click_button submit }
          let (:user) { User.find_by_email('user@example.com')}
  		    
          it { should have_selector('title', text: user.name) }
          it { should have_selector('div.alert.alert-success', text: 'An account for you Example User, you go Example User!') }
          it { should have_link('Sign out') }
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
