require './lib/bot.rb'
require 'twitter'


bot = Twitter_bot.new

bot.client.update("I'm testing my hidden keys")
