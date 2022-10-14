source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use postgresql as the database for Active Record
gem 'pg' #, '~> 0.18'
gem 'active_model_serializers'
gem 'activerecord-reset-pk-sequence'

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  gem 'byebug', platform: :mri

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false

  gem 'rspec-rails', '~> 3.5' # , :github => 'rspec/rspec-rails'
  gem 'rails-controller-testing'

  # Checks ruby code grammar
  gem 'rubocop', require: false
  # With rspec
  gem 'rubocop-rspec'
  # With guard
  gem 'guard-rubocop'
end

group :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'
end

group :coverage do
  gem 'simplecov', :require => false
end
