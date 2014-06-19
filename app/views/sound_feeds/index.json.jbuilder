json.array!(@sound_feeds) do |sound_feed|
  json.extract! sound_feed, :id, :sound, :owner
  json.url sound_feed_url(sound_feed, format: :json)
end
