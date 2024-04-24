require 'httparty'
def prob3
  city = 'Memphis'
  state = 'TN'
  size = 200
  api_key = 'bA9fAdVGLSSD3UwHC2lAdC2gsjnBEKPD'

  response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events?apikey=bA9fAdVGLSSD3UwHC2lAdC2gsjnBEKPD&city=memphis&stateCode=tn&size=200")
  # puts response
  events = response['_embedded']['events']
  events.map do |x|
    { name:  x['name'],
      date:  x['dates']['start']['localDate'],
      time:  x['dates']['start']['localTime'],
      venue: x['_embedded']['venues'][0]['name'] }
  end
end
pp prob3
