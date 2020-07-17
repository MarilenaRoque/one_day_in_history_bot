require '../lib/json_data.rb'

describe JsonData do
  let!(:all) do
    @json_object = JsonData.new('events', 10, 7)
  end
  describe '#initialize' do
    it 'test if it generates the data from the right date' do
      expect(@json_object.json_hash['date']).to eq('July 10')
    end
    it 'test if events is an array inside the hash' do
      expect(@json_object.json_hash['events'].class).to eq(Array)
    end
  end
end
