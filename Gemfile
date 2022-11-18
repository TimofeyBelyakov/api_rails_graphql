source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4"

gem 'pg' #, '~> 0.18'
gem 'active_model_serializers'
gem 'activerecord-reset-pk-sequence'

gem "puma", "~> 5.0"

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem "tzinfo-data"

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false
  gem 'rspec-rails', '~> 3.5' # , :github => 'rspec/rspec-rails'
  gem 'rails-controller-testing'
  gem 'rubocop', require: false
  gem 'rubocop-rspec'
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

gem 'graphql'