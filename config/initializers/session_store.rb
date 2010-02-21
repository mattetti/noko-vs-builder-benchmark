# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_noko_vs_builder_session',
  :secret      => '6a2f8d258d1706576d4072f01d823cce100dd1fa6b1cfcbea4152af1261add14bb7603aedb0b0acee959e4013acfe6da1f104961aeabae2a10a4006fe4edad51'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
