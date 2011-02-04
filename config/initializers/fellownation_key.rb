if RAILS_ENV == 'development' || RAILS_ENV == 'test' || RAILS_ENV == 'cucumber'
  SITE = 'http://dev.localhost.local:3000'
  FKEY = "a4aaJZea5I0yGsBnYGNp"
  FSECRET = "27SeewOSfekMIfVjddXbVr5OEiqp3WkQmZ8hsx5N"
  IFRAME_HELPER = "http://apps.localhost.local:3000/iframe_helper.html"
else
  SITE = 'http://fellownation.com'
  FKEY = "p2wfEpMugQvTONsPBLgg"
  FSECRET = "7HfqxxAEj4TrhOaJaQs03Wu7MKvSQfK4zpwh7lS4"
  IFRAME_HELPER = "http://apps.fellownation.com/iframe_helper.html"
end
WEBSERVIUS_PATH = "http://api.fellownation.com"
WEBSERVIUS_KEY = "Dbsv8wmfax2J5xzAK7_KZ7qrXIiXWR1j"