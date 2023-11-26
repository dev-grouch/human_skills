source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem 'devise'
gem 'devise-i18n'
gem 'letter_opener_web'
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "propshaft"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.8"
gem "redis", "~> 4.0"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem 'axe-core-capybara'
  gem 'axe-core-rspec'
  gem 'debug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'erb_lint', '~> 0.4.0'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 5'
  gem 'rubocop-ast'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec', require: false
  gem 'rubocop-thread_safety'
  gem 'rubocop'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem "better_html"
  gem "test-prof"
end

group :development do
  gem 'annotate'
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
