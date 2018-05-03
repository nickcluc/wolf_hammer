source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.3'

gem 'rails', '~> 5.2'
gem 'pg', '~> 1.0', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '~> 1.3', require: false
gem 'active_model_serializers', '~> 0.10'

group :development, :test do
  gem 'pry-rails', "~> 0.3"
  gem 'rspec-rails', "~> 3.5"
  gem 'factory_bot_rails', "~> 4.8"
end

group :development do
  gem 'listen', '~> 3.1', '< 3.2'
  gem 'spring', "~> 2.0"
  gem 'spring-watcher-listen', '~> 2.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
