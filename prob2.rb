require 'httparty'
def prob2(amt: 100, from: 'USD', to: 'EUR')
  currency = from
  api_key = '37ada3539b7876bb735e3692'
  response = HTTParty.get("https://v6.exchangerate-api.com/v6/37ada3539b7876bb735e3692/latest/usd")
  response['conversion_rates'][to] * amt
end
puts prob2
