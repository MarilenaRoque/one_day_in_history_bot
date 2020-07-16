require './lib/bot.rb'
require 'twitter'
require './lib/json_data.rb'
require './lib/tweet.rb'

bot = TwitterBot.new

# bot.client.update("I'm testing my hidden keys")

loop do
  time = Time.new
  events_string_daily = JsonData.new("events",time.day, time.month)
  daily_tweet = Tweet.new(events_string_daily.json_hash)
  content = (1..290).to_a
  until content.length < 280
    content = daily_tweet.tweet_content
  end
  # bot.client.update(content)
  puts content
  sleep(20)
end
# puts daily_post.event_post_string
