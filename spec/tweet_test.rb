require '../lib/tweet.rb'
require '../lib/json_data.rb'

describe Tweet do
  let!(:all) do
    @json = JsonData.new('events', 7, 10)
    @tweet_test = Tweet.new(@json.json_hash)
  end
  describe '#initialize' do
    it 'test if the initialization returns a Tweet object' do
      expect(@tweet_test.class).to eq(Tweet)
    end
  end
  describe '#tweet_content' do
    it 'Check if it returns a string' do
      expect(@tweet_test.tweet_content.class).to eq(String)
    end
    it 'Check if the string contains the right text' do
      expect(@tweet_test.tweet_content.include?('On this same day')).to eq(true)
    end
  end
end
