require 'faraday'

token = 'AAAAAAAAAAAAAAAAAAAAAMGdoQEAAAAA7fRnIf%2FCGdO6jLS%2BIT3b37orqSw%3DWayTt9qY4AeK559gjF6B1ZH6l8GHl0Ryzc0trhrDhJTgFPXeVn'
url = 'https://api.twitter.com/2/users/1672711007179796480/tweets'

response = Faraday.get(
    url,
    {max_results: 12},
    { "Authorization" => "Bearer #{token}" }
)

puts response.body

#twitter прибрав безкоштовний доступ до API, тому авторізація не проходить.