source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "pg"
gem "rails", "~> 7.0.2"

gem "sprockets-rails"
gem "puma"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis"
gem "sidekiq"
# gem "kredis"
gem "bcrypt"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise"
# gem "sassc-rails"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
end

group :development do
  gem "letter_opener"
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
