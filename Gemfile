source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "pg"
gem "rails", "~> 7.0.2"

gem "importmap-rails"
gem "jbuilder"
gem "puma"
gem "redis"
gem "sidekiq"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
# gem "kredis"
gem "bcrypt"
gem "bootsnap", require: false
gem "devise"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
# gem "sassc-rails"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
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
