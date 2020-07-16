require './lib/bot.rb'
require 'twitter'
require './lib/json_data.rb'
require './lib/tweet.rb'


bot = Twitter_bot.new

# bot.client.update("I'm testing my hidden keys")

1.times do
  time = Time.new
  data_string_daily = JsonData.new(time.day, time.month)
  daily_tweet = Post.new(data_string_daily.json_hash)
  # bot.client.update("On this same day in the year of #{data_string_daily.json_hash["events"][3]["year"]} it happened: #{data_string_daily.json_hash["events"][3]["description"]}")
  content = false
  until content != false && content.length < 280 do
    puts content = daily_tweet.tweet_content
  end
end
# puts daily_post.event_post_string