require './lib/bot.rb'
require 'twitter'
require './lib/json_data.rb'
require './lib/tweet.rb'

bot = TwitterBot.new
last_mention_replied = 0

while true
  time = Time.new
  events_string_daily = JsonData.new("events",time.day, time.month)
  daily_tweet = Tweet.new(events_string_daily.json_hash)

  12.times do
    content = (1..290).to_a
    until content.length < 280
      content = daily_tweet.tweet_content
    end
    bot.tweet(content)
    sleep(60*60*2)
  end

end

