require 'twitter'
require 'dotenv'
Dotenv.load('./.env')

# bot_authentication
class TwitterBot
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
  end

  attr_reader :client
end
