source 'https://rubygems.org'

gem 'rails', '3.2.0'

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg' # needed by heroku
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  #gem 'sass-rails',   '~> 3.2.3'
  #gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'heroku'
gem 'jquery-rails'

gem 'mini_magick'
gem "carrierwave", "~> 0.5.8"

# this needed for carrier waves Google Storage for Developers
gem 'fog'

gem 'devise'
#gem 'simple_form'
gem 'will_paginate'

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
