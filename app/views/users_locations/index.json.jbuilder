json.array!(@users_locations) do |users_location|
  json.extract! users_location, :id
  json.url users_location_url(users_location, format: :json)
end
