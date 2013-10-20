# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleApp::Application.config.secret_key_base = '3a36b1fe1c1f841ee1319baa63fa812609566e8b71632b68c9a2f56b610550de58b8ad8537f81840ca56e1cfee1a1f69a307f490cea260e4c72fac8623acec26'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    #use el token existente
    File.read(token_file).chomp
  else
    #generar un nuevo token y almacenarlo en token_file
    toke = SecureRandom.hex(64)
    File.write(token_file, token)
    token  
  end
end
SampleApp::Application.config.secret_key_base = secure_token