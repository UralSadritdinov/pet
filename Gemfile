source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "pg"
gem "rails", "~> 7.0.2.4"

gem "action_policy"
gem "bcrypt"
gem "bootsnap", require: false
gem "devise"
gem "discard"
gem "enumerize"
gem "importmap-rails"
gem "interactor"
gem "jbuilder"
gem "puma"
gem "redis"
gem "sidekiq"
gem "simple_form"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "capybara"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "ffaker"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "simplecov"
end

group :development do
  gem "letter_opener"
  gem "web-console"
end

group :test do
  gem "selenium-webdriver"
  gem "webdrivers"
end
