json.array!(@events_hobbies) do |events_hobby|
  json.extract! events_hobby, :id
  json.url events_hobby_url(events_hobby, format: :json)
end
