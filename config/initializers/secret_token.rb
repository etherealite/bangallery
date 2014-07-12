# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : 'omg dont tell'
Bangallery::Application.config.secret_token = secret
# Devise refuses lookup the token under the attribute 
# name: secret_token for some reason  so just assign it to the
# rails 4 name as well.
Bangallery::Application.config.secret_key_base = secret
