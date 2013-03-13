source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
	gem 'sqlite3' , '1.3.5'
	gem 'rspec-rails', '2.11.0'
	# rspec-rils in dev mode for access to
	# RSpec-specific generators, and also inculded in test mode
	# in order to run tests
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
	gem 'capybara', '1.1.2'
end
# allos us to simulate a user's interaction with the app 
# using english-like syntax
group :production do
	gem 'pg', '0.12.2'
	# PostgreSQL gem in production for deployment to Heroku
end		

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
