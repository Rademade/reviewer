source "https://rubygems.org"

ruby "2.2.2"

gem "active_model_serializers", "0.8.3"
gem "analytics-ruby", "~> 2.0.0", require: "segment/analytics"
gem "angularjs-rails"
gem "angular_rails_csrf"
gem "attr_extras"
gem "bourbon"
gem "coffee-rails"
gem "coffeelint"
gem "email_validator"
gem "faraday"
gem "font-awesome-rails"
gem "haml-lint", require: "haml_lint"
gem "haml-rails"
gem "high_voltage"
gem "jquery-rails"
gem "jshintrb"
gem "neat"
gem "newrelic_rpm"
gem "octokit", github: "octokit/octokit.rb"
gem "omniauth-github"
gem "paranoia", "~> 2.0"
gem "pg"
gem "rails", "4.2.3"
gem "resque", "~> 1.25.0"
gem "resque-scheduler"
gem "resque-sentry"
gem "rubocop", "0.29.1"
gem "sass-rails"
gem "split", require: "split/dashboard"
gem "stripe"
gem "uglifier", ">= 1.0.3"
gem "unicorn"
gem "dotenv-rails"

group :staging, :production do
  gem "rails_12factor"
  gem "sentry-raven"
end

group :development, :test do
  gem "pry"
  gem "byebug"
  gem "foreman"
  gem "jasmine-rails"
  gem "poltergeist"
  gem "rspec-rails", ">= 3.2"
end


group :development do
  gem 'capistrano',  '~> 3.2'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-resque', require: false
end

group :test do
  gem "capybara", "~> 2.4.0"
  gem "capybara-webkit", "~> 1.5.1"
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "launchy"
  gem "shoulda-matchers"
  gem "webmock"
end
