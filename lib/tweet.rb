# format_twitter_content
class Tweet
  def initialize(information_hash)
    @information_hash = information_hash
    @non_shared_events_idx = (0..@information_hash['events'].length - 1).to_a
  end

  def tweet_content
    event_index = choose_event_idx
    content = 'On this same day in the year of '
    content += @information_hash['events'][event_index]['year'].to_s
    content += ' it happened:  '
    content += @information_hash['events'][event_index]['description'].to_s
    content
  end

  private

  def choose_event_idx
    # Generate a random index
    idx_of_non_shares = rand(1..@non_shared_events_idx.length)
    index = @non_shared_events_idx[idx_of_non_shares]
    # remove the event index from the available ones
    @non_shared_events_idx.delete_at(idx_of_non_shares)
    index
  end
end
