json.array!(@users_events) do |users_event|
  json.extract! users_event, :id
  json.url users_event_url(users_event, format: :json)
end
