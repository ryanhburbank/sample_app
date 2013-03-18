FactoryGirl.define do  
	 factory :user do
	 	name 	"Mr. Example"
		email	 "example@test.com"
		password 	 "example"
		password_confirmation 	"example"
	end
end


#with this definition in place
#we can create a user factory in the tetss using let and the 
#FactoryGirl method supplied by Factory Factory FactoryGirl
#let(:user) { FactoryGirl.create(:user) }