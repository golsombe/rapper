# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rapper_session',
  :secret      => 'b8bc8aa25bc86553b2d2cd5c9aa27c2b0c0dc1150afe0fb3c255af62cc6c4019a8899b1fd69948f67da3dda9eecbfca090e1979d71132f1dc3469aa7c2696988'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
