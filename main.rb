require_relative '../lib/bot.rb'
require 'twitter'
require_relative '../lib/json_data.rb'
require_relative '../lib/tweet.rb'

bot = TwitterBot.new

loop do
  time = Time.new
  events_string_daily = JsonData.new('events', time.day, time.month)
  daily_tweet = Tweet.new(events_string_daily.json_hash)

  12.times do
    content = (1..290).to_a
    content = daily_tweet.tweet_content until content.length < 280
    bot.tweet(content)
    sleep(60 * 2 * 60)
  end
end
