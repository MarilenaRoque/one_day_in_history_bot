require './lib/bot.rb'
require 'twitter'
require './lib/json_data.rb'


bot = Twitter_bot.new

# bot.client.update("I'm testing my hidden keys")

1.times do
  time = Time.new
  data_string_daily = JsonData.new(time.day, time.month)
  bot.client.update(" On this same day in the year of #{data_string_daily.json_hash["events"][3]["year"]} it happened: #{data_string_daily.json_hash["events"][3]["description"]}")
end