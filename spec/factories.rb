FactoryGirl.define do  
	 factory :user do
	 	sequence(:name) { |n| "Person #{n}" }	
		sequence(:email) { |n| "person_#{n}@example.com" }	
		password "example"
		password_confirmation "example"

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Lorem ipsum"
		user #tells FactoryGirl about post's associated user
	end
end


#with this definition in place
#we can create a user factory in the tests using let and the 
#FactoryGirl method supplied by Factory Factory FactoryGirl
#let(:user) { FactoryGirl.create(:user) }