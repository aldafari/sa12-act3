require 'httparty'
def prob1

  api_key = '88b76204ade06e8f4226860413d41dfb'

  response = HTTParty.get("https://pro.openweathermap.org/data/2.5/forecast/climate?lat=35.117500&lon=-89.971107.&appid=88b76204ade06e8f4226860413d41dfb")

end
puts prob1
