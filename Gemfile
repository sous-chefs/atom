source 'https://rubygems.org'

gem 'rake'

group :test, :integration do
  gem 'berkshelf', '~> 3.0'
end

group :test do
  gem 'chefspec', '~> 4.0'
  gem 'foodcritic', '~> 4.0.0'
  gem 'stove', '~> 3.2.2'
end

group :integration do
  gem 'kitchen-docker', '~> 1.5.0'
  gem 'test-kitchen', '~> 1.2.1'
end

group :development do
  gem 'rubocop', '~> 0.25'
end
