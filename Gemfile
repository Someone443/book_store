source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.11'
gem 'pg', '>= 0.18', '< 2.0'
gem 'seedbank', '~> 0.5.0'
gem 'ffaker', '~> 2.12'
gem 'uglifier', '>= 1.3.0'
gem 'duktape'
gem 'turbolinks', '~> 5'
gem 'devise', '~> 4.2'
gem 'pagy', '~> 3.5'
gem 'draper', '~> 3.1'

# HTML CSS
gem 'bootstrap-sass', '~> 3.3.7'
gem 'sass-rails', '~> 5.0'
gem 'haml', '~> 5.1'

# JS
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'coffee-rails', '~> 4.2'

# gem 'mini_magick', '~> 4.8'
# gem 'capistrano-rails', group: :development

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec', ' 3.8.0'
  gem 'rspec-core', ' 3.8.0'
  gem 'rspec-rails', ' 3.8.0' 
  gem 'factory_bot_rails', '~> 5.0'
  gem 'simplecov', '~> 0.16.1'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper', '1.2.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
