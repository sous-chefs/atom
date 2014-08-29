# A sample Gemfile
source "https://rubygems.org"

gem 'rake'

group :test, :integration do 
  gem 'berkshelf', '~> 3.0'
end

group :test do
  gem 'chefspec', '~> 4.0'
  gem 'foodcritic', '~> 3.0.3'
  gem 'rubocop', '~> 0.23'
end

group :integration do 
  gem 'kitchen-docker', '~> 0.14'
  gem 'test-kitchen', '~> 1.2.1'
end
