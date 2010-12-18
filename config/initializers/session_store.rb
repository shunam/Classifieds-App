# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_classifieds_app_session',
  :secret      => 'b3b4658005782572dc344adec4f244b88dea5ef5a44fc01c0d413b88f17fa414e4734bc9c2dac2607c6f5131f1449d9bc693186c01ce2b89371f29142b6d5ce8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
