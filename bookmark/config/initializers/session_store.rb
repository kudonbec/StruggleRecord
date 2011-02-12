# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bookmark_session',
  :secret      => '743eff70e0069e0e439f439f2703fbbfd29c2d11ccb245cee5d983b62144bb80eb5c550fd754295e6ee09f98048538430f4c0d71dcf8d444f23c67955653d151'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
