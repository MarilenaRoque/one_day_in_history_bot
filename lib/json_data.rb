require 'http'
require 'json/pure'

class JsonData
  def initialize(day,month)
    url = "https://byabbe.se/on-this-day/#{month}/#{day}/events.json"
    json_string = HTTP.get(url).body.to_s
    @json_hash = JSON.parse(json_string)
  end
  attr_reader :json_hash
end