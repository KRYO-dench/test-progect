require 'faraday'

token = 'AAAAAAAAAAAAAAAAAAAAAMGdoQEAAAAAE4q2YSA%2FhzqCTPejSNylgpp94Kk%3DQJWV57CTkEkUeQRCdudcv1fKxUksSXbzTl2MVXxnFx5PENR7Sm'
url = 'https://api.twitter.com/2/users/1340584098075717635/tweets'

response = Faraday.get(
    url,
    {max_results: 12},
    {"Authorizatoin" => "Bearer #{token}"}
)

puts response.body