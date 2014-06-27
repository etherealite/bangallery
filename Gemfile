source 'https://rubygems.org'

gem "rails", "~> 3.2.16"

group :development, :test do
  gem 'sqlite3'
  gem 'therubyracer'
  gem "faker", "~> 1.2.0"
  gem "factory_girl", "~> 4.3.0"
  gem "rspec-rails", "~> 2.14.1"
end

group :production do
  gem 'pg' # needed by heroku
  gem 'google-analytics-rails'
  # this needed for carrier waves Google Storage for Developers
  gem 'fog'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails', '~> 1.1.7'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem "autoprefixer-rails"
# Active admin
#
gem 'activeadmin'
gem "meta_search",    '>= 1.1.0.pre'

gem 'heroku'
gem 'turnout', '~> 1.0.0'

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'mini_magick'
gem "carrierwave", "~> 0.5.8"

gem "devise", "~> 3.2.2"

gem 'kaminari', '~> 0.15.1'

gem 'newrelic_rpm'

gem 'jcrop-rails-v2', '~> 0.9.12.3'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
