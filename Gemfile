source 'https://rubygems.org'

gem 'rails', '4.0.5'
gem 'mysql2'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

gem 'rspec'
gem 'rspec-rails'

group :development do
  gem 'cucumber'
end

group :development, :test, :cucumber do
  gem 'debugger'
  gem 'brakeman', :require => false
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'capybara-webkit', '0.12.1'
  gem 'capybara-screenshot'
  gem 'launchy'
end
