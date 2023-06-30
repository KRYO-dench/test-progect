require 'faraday'
require 'json'

token = 'AAAAAAAAAAAAAAAAAAAAAMGdoQEAAAAA7fRnIf%2FCGdO6jLS%2BIT3b37orqSw%3DWayTt9qY4AeK559gjF6B1ZH6l8GHl0Ryzc0trhrDhJTgFPXeVn'
url = 'https://api.twitter.com/2/users/1672711007179796480/tweets'

response = Faraday.get(
    url,
    {max_results: 12},
    { "Authorization" => "Bearer #{token}" }
)

raw_tweets = JSON.parse(response.body) #конвертація у hash
tweets = raw_tweets['data'].map { |t| t['text'] }
# puts tweets #array, у якому містяться строки (strings)

#twitter прибрав безкоштовний доступ до API, тому авторізація не проходить.

puts 'Вкажіть свій знак зодіака;'
zodiac = gets.strip.downcase

found = tweets.select do |tweet| # показує той єлемент, який відповідає необхідній умові...
    # умову пишемо в середині блока do-end
    tweet.downcase.include?(zodiac)  
end

puts found.first