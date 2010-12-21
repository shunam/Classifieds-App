if RAILS_ENV == 'development' || RAILS_ENV == 'test' || RAILS_ENV == 'cucumber'
  SITE = 'http://dev.localhost.local:3000'
  FKEY = "a4aaJZea5I0yGsBnYGNp"
  FSECRET = "27SeewOSfekMIfVjddXbVr5OEiqp3WkQmZ8hsx5N"
else
  SITE = 'http://fellownation.com'
  FKEY = "p2wfEpMugQvTONsPBLgg"
  FSECRET = "7HfqxxAEj4TrhOaJaQs03Wu7MKvSQfK4zpwh7lS4"
end