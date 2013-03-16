require 'spec_helper'

describe "Static pages" do

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_selector('h1', text: heading) }
		it { should have_selector('title', text: full_title(page_title)) }
	end

	describe "Home page" do
		it "should have the right links on the layout" do
		visit root_path
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

		it_should_behave_like "all static pages"
		before { visit root_path }
		let(:heading) { 'Sample App' }
		let(:page_title) { '' }
				
		it { should_not have_selector 'title', text: '| Home'}
	end

	describe "Help page" do
		it "should have the right links on the layout" do
		visit help_path
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

		it_should_behave_like "all static pages"
		before { visit help_path }
		let(:heading) { 'Help' }
		let(:page_title) { '' }
	end

	describe "About page" do
		it "should have the right links on the layout" do
		visit about_path
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

		it_should_behave_like "all static pages"
		before { visit about_path }
		let(:heading) { 'About' }
		let(:page_title) { '' }
	end		

	describe "Contact page" do
		it "should have the right links on the layout" do
		visit contact_path
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
		it_should_behave_like "all static pages"
		before { visit contact_path }
		let(:heading) { 'Contact'}
		let(:page_title) { '' }
	end	
end
