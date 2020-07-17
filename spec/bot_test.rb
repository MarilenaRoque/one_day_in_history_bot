require '../lib/bot.rb'

describe TwitterBot do
  let!(:all) do
    @bot_test = TwitterBot.new
  end
  describe "#initialize" do
    it "test if the initialization returns a TwitterBot object" do
      expect(@bot_test.class).to eq(TwitterBot)
    end 
    it "test if the authentication returns the right object" do
      puts @bot_test.tweet("hey")
      expect(@bot_test.client.class).to eq(Twitter::REST::Client)
    end
    it "test negative case" do
      expect(@bot_test.client.class).to_not eq(TwitterBot)
    end
  end
end