json.array!(@ignored_events) do |ignored_event|
  json.extract! ignored_event, :id
  json.url ignored_event_url(ignored_event, format: :json)
end
